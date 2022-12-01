<?xml version="1.0"?>
<!DOCTYPE altarica>
<altarica>
  <define-block name="System">
    <define-parameter name="GS1.Antenna.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS1.Antenna.pMeu" type="Real">
      <Real value="0.025"/>
    </define-parameter>
    <define-parameter name="GS1.Receiver1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS1.Receiver2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS1.Transmitter1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS1.Transmitter2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS2.Antenna.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS2.Antenna.pMeu" type="Real">
      <Real value="0.025"/>
    </define-parameter>
    <define-parameter name="GS2.Receiver1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS2.Receiver2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS2.Transmitter1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS2.Transmitter2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="Sat.Battery1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="Sat.Battery2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="Sat.Receiver1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="Sat.Receiver2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="Sat.Transmitter1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="Sat.Transmitter2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay1.Battery1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay1.Battery2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay1.Receiver1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay1.Receiver2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay1.Transmitter1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay1.Transmitter2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay2.Battery1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay2.Battery2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay2.Receiver1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay2.Receiver2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay2.Transmitter1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="SatRelay2.Transmitter2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-variable name="GS1.Antenna.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Antenna.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Antenna.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Receiver1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Receiver1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Receiver1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Receiver2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Receiver2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Receiver2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Transmitter1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Transmitter1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Transmitter1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Transmitter2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Transmitter2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.Transmitter2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Antenna.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Antenna.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Antenna.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Receiver1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Receiver1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Receiver1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Receiver2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Receiver2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Receiver2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Transmitter1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Transmitter1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Transmitter1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Transmitter2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Transmitter2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.Transmitter2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Phase1.vfWorking" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Phase2.vfWorking" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Phase3.vfWorking" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Phase4.vfWorking" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="PhaseController.vsPhase" type="Integer">
      <attribute name="init">
        <Integer value="2"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Battery1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Battery1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Battery1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Battery2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Battery2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Battery2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Receiver1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Receiver1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Receiver1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Receiver2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Receiver2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Receiver2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Transmitter1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Transmitter1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Transmitter1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Transmitter2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Transmitter2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.Transmitter2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="Sat.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Battery1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Battery1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Battery1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Battery2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Battery2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Battery2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Receiver1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Receiver1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Receiver1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Receiver2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Receiver2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Receiver2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Transmitter1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Transmitter1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Transmitter1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Transmitter2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Transmitter2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.Transmitter2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Battery1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Battery1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Battery1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Battery2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Battery2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Battery2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Receiver1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Receiver1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Receiver1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Receiver2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Receiver2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Receiver2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Transmitter1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Transmitter1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Transmitter1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Transmitter2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Transmitter2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.Transmitter2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="SatRelay2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="vfWorking" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-event name="GS1.Antenna.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS1.Antenna.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS1.Antenna.evRepair">
      <attribute name="delay">
        <exponential>
          <parameter name="GS1.Antenna.pMeu"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS1.Receiver1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS1.Receiver1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS1.Receiver2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS1.Receiver2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS1.Transmitter1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS1.Transmitter1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS1.Transmitter2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS1.Transmitter2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS2.Antenna.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS2.Antenna.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS2.Antenna.evRepair">
      <attribute name="delay">
        <exponential>
          <parameter name="GS2.Antenna.pMeu"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS2.Receiver1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS2.Receiver1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS2.Receiver2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS2.Receiver2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS2.Transmitter1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS2.Transmitter1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS2.Transmitter2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS2.Transmitter2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="Sat.Battery1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="Sat.Battery1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="Sat.Battery2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="Sat.Battery2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="Sat.Receiver1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="Sat.Receiver1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="Sat.Receiver2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="Sat.Receiver2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="Sat.Transmitter1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="Sat.Transmitter1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="Sat.Transmitter2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="Sat.Transmitter2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay1.Battery1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay1.Battery1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay1.Battery2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay1.Battery2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay1.Receiver1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay1.Receiver1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay1.Receiver2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay1.Receiver2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay1.Transmitter1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay1.Transmitter1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay1.Transmitter2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay1.Transmitter2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay2.Battery1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay2.Battery1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay2.Battery2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay2.Battery2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay2.Receiver1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay2.Receiver1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay2.Receiver2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay2.Receiver2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay2.Transmitter1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay2.Transmitter1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="SatRelay2.Transmitter2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="SatRelay2.Transmitter2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-observer name="oFailed" type="Boolean">
      <not>
        <variable name="vfWorking"/>
      </not>
    </define-observer>
    <assertion>
      <assignment>
        <variable name="Phase1.vfWorking"/>
        <and>
          <variable name="GS1.vfOutput"/>
          <variable name="Sat.vfOutput"/>
        </and>
      </assignment>
      <assignment>
        <variable name="Phase2.vfWorking"/>
        <and>
          <or>
            <variable name="GS1.vfOutput"/>
            <variable name="GS2.vfOutput"/>
          </or>
          <variable name="Sat.vfOutput"/>
        </and>
      </assignment>
      <assignment>
        <variable name="Phase3.vfWorking"/>
        <and>
          <variable name="Sat.vfOutput"/>
          <variable name="GS2.vfOutput"/>
        </and>
      </assignment>
      <assignment>
        <variable name="Phase4.vfWorking"/>
        <and>
          <or>
            <variable name="GS1.vfOutput"/>
            <variable name="GS2.vfOutput"/>
          </or>
          <variable name="Sat.vfOutput"/>
          <or>
            <variable name="SatRelay1.vfOutput"/>
            <variable name="SatRelay2.vfOutput"/>
          </or>
        </and>
      </assignment>
      <assignment>
        <variable name="GS1.Antenna.vfOutput"/>
        <ite>
          <variable name="GS1.Antenna.vsWorking"/>
          <variable name="GS1.Antenna.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS1.Receiver1.vfOutput"/>
        <ite>
          <variable name="GS1.Receiver1.vsWorking"/>
          <variable name="GS1.Receiver1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS1.Receiver2.vfOutput"/>
        <ite>
          <variable name="GS1.Receiver2.vsWorking"/>
          <variable name="GS1.Receiver2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS1.Transmitter1.vfOutput"/>
        <ite>
          <variable name="GS1.Transmitter1.vsWorking"/>
          <variable name="GS1.Transmitter1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS1.Transmitter2.vfOutput"/>
        <ite>
          <variable name="GS1.Transmitter2.vsWorking"/>
          <variable name="GS1.Transmitter2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS1.Antenna.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="GS1.Transmitter1.vfInput"/>
        <variable name="GS1.Antenna.vfOutput"/>
      </assignment>
      <assignment>
        <variable name="GS1.Transmitter2.vfInput"/>
        <variable name="GS1.Antenna.vfOutput"/>
      </assignment>
      <assignment>
        <variable name="GS1.Receiver1.vfInput"/>
        <or>
          <variable name="GS1.Transmitter1.vfOutput"/>
          <variable name="GS1.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="GS1.Receiver2.vfInput"/>
        <or>
          <variable name="GS1.Transmitter1.vfOutput"/>
          <variable name="GS1.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="GS1.vfOutput"/>
        <or>
          <variable name="GS1.Receiver1.vfOutput"/>
          <variable name="GS1.Receiver2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="GS2.Antenna.vfOutput"/>
        <ite>
          <variable name="GS2.Antenna.vsWorking"/>
          <variable name="GS2.Antenna.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS2.Receiver1.vfOutput"/>
        <ite>
          <variable name="GS2.Receiver1.vsWorking"/>
          <variable name="GS2.Receiver1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS2.Receiver2.vfOutput"/>
        <ite>
          <variable name="GS2.Receiver2.vsWorking"/>
          <variable name="GS2.Receiver2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS2.Transmitter1.vfOutput"/>
        <ite>
          <variable name="GS2.Transmitter1.vsWorking"/>
          <variable name="GS2.Transmitter1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS2.Transmitter2.vfOutput"/>
        <ite>
          <variable name="GS2.Transmitter2.vsWorking"/>
          <variable name="GS2.Transmitter2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS2.Antenna.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="GS2.Transmitter1.vfInput"/>
        <variable name="GS2.Antenna.vfOutput"/>
      </assignment>
      <assignment>
        <variable name="GS2.Transmitter2.vfInput"/>
        <variable name="GS2.Antenna.vfOutput"/>
      </assignment>
      <assignment>
        <variable name="GS2.Receiver1.vfInput"/>
        <or>
          <variable name="GS2.Transmitter1.vfOutput"/>
          <variable name="GS2.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="GS2.Receiver2.vfInput"/>
        <or>
          <variable name="GS2.Transmitter1.vfOutput"/>
          <variable name="GS2.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="GS2.vfOutput"/>
        <or>
          <variable name="GS2.Receiver1.vfOutput"/>
          <variable name="GS2.Receiver2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="Sat.Battery1.vfOutput"/>
        <ite>
          <variable name="Sat.Battery1.vsWorking"/>
          <variable name="Sat.Battery1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="Sat.Battery2.vfOutput"/>
        <ite>
          <variable name="Sat.Battery2.vsWorking"/>
          <variable name="Sat.Battery2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="Sat.Receiver1.vfOutput"/>
        <ite>
          <variable name="Sat.Receiver1.vsWorking"/>
          <variable name="Sat.Receiver1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="Sat.Receiver2.vfOutput"/>
        <ite>
          <variable name="Sat.Receiver2.vsWorking"/>
          <variable name="Sat.Receiver2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="Sat.Transmitter1.vfOutput"/>
        <ite>
          <variable name="Sat.Transmitter1.vsWorking"/>
          <variable name="Sat.Transmitter1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="Sat.Transmitter2.vfOutput"/>
        <ite>
          <variable name="Sat.Transmitter2.vsWorking"/>
          <variable name="Sat.Transmitter2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="Sat.Battery1.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="Sat.Battery2.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="Sat.Transmitter1.vfInput"/>
        <or>
          <variable name="Sat.Battery1.vfOutput"/>
          <variable name="Sat.Battery2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="Sat.Transmitter2.vfInput"/>
        <or>
          <variable name="Sat.Battery1.vfOutput"/>
          <variable name="Sat.Battery2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="Sat.Receiver1.vfInput"/>
        <or>
          <variable name="Sat.Transmitter1.vfOutput"/>
          <variable name="Sat.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="Sat.Receiver2.vfInput"/>
        <or>
          <variable name="Sat.Transmitter1.vfOutput"/>
          <variable name="Sat.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="Sat.vfOutput"/>
        <or>
          <variable name="Sat.Receiver1.vfOutput"/>
          <variable name="Sat.Receiver2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Battery1.vfOutput"/>
        <ite>
          <variable name="SatRelay1.Battery1.vsWorking"/>
          <variable name="SatRelay1.Battery1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Battery2.vfOutput"/>
        <ite>
          <variable name="SatRelay1.Battery2.vsWorking"/>
          <variable name="SatRelay1.Battery2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Receiver1.vfOutput"/>
        <ite>
          <variable name="SatRelay1.Receiver1.vsWorking"/>
          <variable name="SatRelay1.Receiver1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Receiver2.vfOutput"/>
        <ite>
          <variable name="SatRelay1.Receiver2.vsWorking"/>
          <variable name="SatRelay1.Receiver2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Transmitter1.vfOutput"/>
        <ite>
          <variable name="SatRelay1.Transmitter1.vsWorking"/>
          <variable name="SatRelay1.Transmitter1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Transmitter2.vfOutput"/>
        <ite>
          <variable name="SatRelay1.Transmitter2.vsWorking"/>
          <variable name="SatRelay1.Transmitter2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Battery1.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Battery2.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Transmitter1.vfInput"/>
        <or>
          <variable name="SatRelay1.Battery1.vfOutput"/>
          <variable name="SatRelay1.Battery2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Transmitter2.vfInput"/>
        <or>
          <variable name="SatRelay1.Battery1.vfOutput"/>
          <variable name="SatRelay1.Battery2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Receiver1.vfInput"/>
        <or>
          <variable name="SatRelay1.Transmitter1.vfOutput"/>
          <variable name="SatRelay1.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay1.Receiver2.vfInput"/>
        <or>
          <variable name="SatRelay1.Transmitter1.vfOutput"/>
          <variable name="SatRelay1.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay1.vfOutput"/>
        <or>
          <variable name="SatRelay1.Receiver1.vfOutput"/>
          <variable name="SatRelay1.Receiver2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Battery1.vfOutput"/>
        <ite>
          <variable name="SatRelay2.Battery1.vsWorking"/>
          <variable name="SatRelay2.Battery1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Battery2.vfOutput"/>
        <ite>
          <variable name="SatRelay2.Battery2.vsWorking"/>
          <variable name="SatRelay2.Battery2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Receiver1.vfOutput"/>
        <ite>
          <variable name="SatRelay2.Receiver1.vsWorking"/>
          <variable name="SatRelay2.Receiver1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Receiver2.vfOutput"/>
        <ite>
          <variable name="SatRelay2.Receiver2.vsWorking"/>
          <variable name="SatRelay2.Receiver2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Transmitter1.vfOutput"/>
        <ite>
          <variable name="SatRelay2.Transmitter1.vsWorking"/>
          <variable name="SatRelay2.Transmitter1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Transmitter2.vfOutput"/>
        <ite>
          <variable name="SatRelay2.Transmitter2.vsWorking"/>
          <variable name="SatRelay2.Transmitter2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Battery1.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Battery2.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Transmitter1.vfInput"/>
        <or>
          <variable name="SatRelay2.Battery1.vfOutput"/>
          <variable name="SatRelay2.Battery2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Transmitter2.vfInput"/>
        <or>
          <variable name="SatRelay2.Battery1.vfOutput"/>
          <variable name="SatRelay2.Battery2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Receiver1.vfInput"/>
        <or>
          <variable name="SatRelay2.Transmitter1.vfOutput"/>
          <variable name="SatRelay2.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay2.Receiver2.vfInput"/>
        <or>
          <variable name="SatRelay2.Transmitter1.vfOutput"/>
          <variable name="SatRelay2.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="SatRelay2.vfOutput"/>
        <or>
          <variable name="SatRelay2.Receiver1.vfOutput"/>
          <variable name="SatRelay2.Receiver2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="vfWorking"/>
        <ite>
          <eq>
            <variable name="PhaseController.vsPhase"/>
            <Integer value="1"/>
          </eq>
          <variable name="Phase1.vfWorking"/>
          <ite>
            <eq>
              <variable name="PhaseController.vsPhase"/>
              <Integer value="2"/>
            </eq>
            <variable name="Phase2.vfWorking"/>
            <ite>
              <eq>
                <variable name="PhaseController.vsPhase"/>
                <Integer value="3"/>
              </eq>
              <variable name="Phase3.vfWorking"/>
              <ite>
                <eq>
                  <variable name="PhaseController.vsPhase"/>
                  <Integer value="4"/>
                </eq>
                <variable name="Phase4.vfWorking"/>
                <Boolean value="false"/>
              </ite>
            </ite>
          </ite>
        </ite>
      </assignment>
    </assertion>
    <transition>
      <event name="GS1.Antenna.evFailure"/>
      <variable name="GS1.Antenna.vsWorking"/>
      <assignment>
        <variable name="GS1.Antenna.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS1.Antenna.evRepair"/>
      <not>
        <variable name="GS1.Antenna.vsWorking"/>
      </not>
      <assignment>
        <variable name="GS1.Antenna.vsWorking"/>
        <Boolean value="true"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS1.Receiver1.evFailure"/>
      <variable name="GS1.Receiver1.vsWorking"/>
      <assignment>
        <variable name="GS1.Receiver1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS1.Receiver2.evFailure"/>
      <variable name="GS1.Receiver2.vsWorking"/>
      <assignment>
        <variable name="GS1.Receiver2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS1.Transmitter1.evFailure"/>
      <variable name="GS1.Transmitter1.vsWorking"/>
      <assignment>
        <variable name="GS1.Transmitter1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS1.Transmitter2.evFailure"/>
      <variable name="GS1.Transmitter2.vsWorking"/>
      <assignment>
        <variable name="GS1.Transmitter2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS2.Antenna.evFailure"/>
      <variable name="GS2.Antenna.vsWorking"/>
      <assignment>
        <variable name="GS2.Antenna.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS2.Antenna.evRepair"/>
      <not>
        <variable name="GS2.Antenna.vsWorking"/>
      </not>
      <assignment>
        <variable name="GS2.Antenna.vsWorking"/>
        <Boolean value="true"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS2.Receiver1.evFailure"/>
      <variable name="GS2.Receiver1.vsWorking"/>
      <assignment>
        <variable name="GS2.Receiver1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS2.Receiver2.evFailure"/>
      <variable name="GS2.Receiver2.vsWorking"/>
      <assignment>
        <variable name="GS2.Receiver2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS2.Transmitter1.evFailure"/>
      <variable name="GS2.Transmitter1.vsWorking"/>
      <assignment>
        <variable name="GS2.Transmitter1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS2.Transmitter2.evFailure"/>
      <variable name="GS2.Transmitter2.vsWorking"/>
      <assignment>
        <variable name="GS2.Transmitter2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="Sat.Battery1.evFailure"/>
      <variable name="Sat.Battery1.vsWorking"/>
      <assignment>
        <variable name="Sat.Battery1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="Sat.Battery2.evFailure"/>
      <variable name="Sat.Battery2.vsWorking"/>
      <assignment>
        <variable name="Sat.Battery2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="Sat.Receiver1.evFailure"/>
      <variable name="Sat.Receiver1.vsWorking"/>
      <assignment>
        <variable name="Sat.Receiver1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="Sat.Receiver2.evFailure"/>
      <variable name="Sat.Receiver2.vsWorking"/>
      <assignment>
        <variable name="Sat.Receiver2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="Sat.Transmitter1.evFailure"/>
      <variable name="Sat.Transmitter1.vsWorking"/>
      <assignment>
        <variable name="Sat.Transmitter1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="Sat.Transmitter2.evFailure"/>
      <variable name="Sat.Transmitter2.vsWorking"/>
      <assignment>
        <variable name="Sat.Transmitter2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay1.Battery1.evFailure"/>
      <variable name="SatRelay1.Battery1.vsWorking"/>
      <assignment>
        <variable name="SatRelay1.Battery1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay1.Battery2.evFailure"/>
      <variable name="SatRelay1.Battery2.vsWorking"/>
      <assignment>
        <variable name="SatRelay1.Battery2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay1.Receiver1.evFailure"/>
      <variable name="SatRelay1.Receiver1.vsWorking"/>
      <assignment>
        <variable name="SatRelay1.Receiver1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay1.Receiver2.evFailure"/>
      <variable name="SatRelay1.Receiver2.vsWorking"/>
      <assignment>
        <variable name="SatRelay1.Receiver2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay1.Transmitter1.evFailure"/>
      <variable name="SatRelay1.Transmitter1.vsWorking"/>
      <assignment>
        <variable name="SatRelay1.Transmitter1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay1.Transmitter2.evFailure"/>
      <variable name="SatRelay1.Transmitter2.vsWorking"/>
      <assignment>
        <variable name="SatRelay1.Transmitter2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay2.Battery1.evFailure"/>
      <variable name="SatRelay2.Battery1.vsWorking"/>
      <assignment>
        <variable name="SatRelay2.Battery1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay2.Battery2.evFailure"/>
      <variable name="SatRelay2.Battery2.vsWorking"/>
      <assignment>
        <variable name="SatRelay2.Battery2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay2.Receiver1.evFailure"/>
      <variable name="SatRelay2.Receiver1.vsWorking"/>
      <assignment>
        <variable name="SatRelay2.Receiver1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay2.Receiver2.evFailure"/>
      <variable name="SatRelay2.Receiver2.vsWorking"/>
      <assignment>
        <variable name="SatRelay2.Receiver2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay2.Transmitter1.evFailure"/>
      <variable name="SatRelay2.Transmitter1.vsWorking"/>
      <assignment>
        <variable name="SatRelay2.Transmitter1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="SatRelay2.Transmitter2.evFailure"/>
      <variable name="SatRelay2.Transmitter2.vsWorking"/>
      <assignment>
        <variable name="SatRelay2.Transmitter2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
  </define-block>
</altarica>
