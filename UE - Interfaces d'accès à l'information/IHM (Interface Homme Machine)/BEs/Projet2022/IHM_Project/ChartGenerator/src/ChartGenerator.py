#!/usr/bin/env -P /usr/bin:/usr/local/bin python3 -B
# coding: utf-8

#
#  ChartGenerator.py
#  ChartGenerator version 1.0
#  Created by Ingenuity i/o on 2023/01/27
#
# "no description"
#
import os
import random
import string

import ingescape as igs
import sys

import requests
import plotly.graph_objs as go
from datetime import datetime

# Set log level to Trace
igs.log_console_level(igs.LOG_TRACE)


class Singleton(type):
    _instances = {}
    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super(Singleton, cls).__call__(*args, **kwargs)
        return cls._instances[cls]


class ChartGenerator(metaclass=Singleton):
    def __init__(self):
        # inputs
        self.coin1I = None
        self.coin2I = None

        # Timestamp in seconds
        self.start_timeI = 0
        self.end_timeI = 0

        # outputs
        self._chart1_uriO = None
        self._chart2_uriO = None
        self._error_msgO = None

    # outputs
    @property
    def chart1_uriO(self):
        return self._chart1_uriO

    @chart1_uriO.setter
    def chart1_uriO(self, value):
        self._chart1_uriO = value
        if self._chart1_uriO is not None:
            igs.output_set_string("chart1_uri", self._chart1_uriO)

    @property
    def chart2_uriO(self):
        return self._chart2_uriO

    @chart2_uriO.setter
    def chart2_uriO(self, value):
        self._chart2_uriO = value
        if self._chart2_uriO is not None:
            igs.output_set_string("chart2_uri", self._chart2_uriO)

    @property
    def error_msgO(self):
        return self._error_msgO

    @error_msgO.setter
    def error_msgO(self, value):
        self._error_msgO = value
        if self._error_msgO is not None:
            igs.output_set_string("error_msg", self._error_msgO)

    def generate_chart(self):
        igs.debug("Generating chart")
        try:
            additional_params = self.get_additional_params()
            igs.debug("Additional parameters: " + additional_params)
            chart1 = self.create_chart(self.coin1I, additional_params)
            chart2 = self.create_chart(self.coin2I, additional_params)
        except Exception as e:
            igs.warn("Exception raised: %s" % str(e))
            self.error_msgO = str(e)
            self.chart1_uriO = ""
            self.chart2_uriO = ""
            return

        igs.debug("Charts generated")
        igs.trace("chart1 = %s" % chart1)
        igs.trace("chart2 = %s" % chart2)
        self.error_msgO = ""
        self.chart1_uriO = chart1
        self.chart2_uriO = chart2

    @staticmethod
    # To see more about API: https://min-api.cryptocompare.com/documentation?key=Historical&cat=dataHistominute
    def create_chart(coin_id, params):
        url = f'https://min-api.cryptocompare.com/data/v2/histominute?fsym={coin_id}&tsym=USD{params}'

        # HTTP request
        response1 = requests.get(url)
        dataA = response1.json()
        if dataA['Response'] != 'Success':
            raise Exception(dataA['Message'])

        # Parsing json file
        data1 = dataA['Data']['Data']
        trace1 = go.Candlestick(x=[datetime.fromtimestamp(x['time']) for x in data1],
                                open=[x['open'] for x in data1],
                                high=[x['high'] for x in data1],
                                low=[x['low'] for x in data1],
                                close=[x['close'] for x in data1],
                                name=coin_id)
        data = [trace1]

        # Drawing figures about each coin and save as a .png file
        layout = go.Layout(title=f"{coin_id} price history", xaxis_title='Time', yaxis_title='Price (USD)', plot_bgcolor='rgba(0,0,0)')
        fig = go.Figure(data=data, layout=layout)
        output_path = ChartGenerator.get_output_path()
        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        fig.write_image(output_path)
        return "file:/" + output_path

    @staticmethod
    def get_output_path():
        return "/tmp/generated-charts/" + get_random_string(10) + ".png"

    def get_additional_params(self):
        igs.trace("get_additional_params()")
        igs.trace("self.start_timeI = %d" % self.start_timeI)
        igs.trace("self.end_timeI = %d" % self.end_timeI)

        # Some exceptions ...
        if self.start_timeI > self.end_timeI:
            raise Exception("Start time must be lower than end time")

        minutes = (self.end_timeI - self.start_timeI) / 60
        # Mere choice of the limit...
        if minutes < 5:
            raise Exception("Time range must be at least 5 minutes")
        if minutes > 2000:
            raise Exception("Time range must cannot exceed 2000 minutes")

        # API restriction
        if self.start_timeI < datetime.now().timestamp() - 7 * 24 * 3600:
            raise Exception("Start time cannot be older than 7 days")

        params = f"&toTs={self.end_timeI}&limit={minutes}"

        return params


def get_random_string(length):
    letters = string.ascii_lowercase
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str
