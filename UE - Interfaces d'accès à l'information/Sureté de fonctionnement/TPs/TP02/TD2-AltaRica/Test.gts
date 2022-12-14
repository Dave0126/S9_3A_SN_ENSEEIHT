<?xml version="1.0"?>
<!DOCTYPE altarica>
<altarica>
  <define-block name="Test">
    <define-parameter name="GS.Antenna.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS.Antenna.pMeu" type="Real">
      <Real value="0.025"/>
    </define-parameter>
    <define-parameter name="GS.Receiver1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS.Receiver2.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS.Transmitter1.pLambda" type="Real">
      <Real value="1e-05"/>
    </define-parameter>
    <define-parameter name="GS.Transmitter2.pLambda" type="Real">
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
    <define-variable name="GS.Antenna.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Antenna.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Antenna.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Receiver1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Receiver1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Receiver1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Receiver2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Receiver2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Receiver2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Transmitter1.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Transmitter1.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Transmitter1.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Transmitter2.vfInput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Transmitter2.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.Transmitter2.vsWorking" type="Boolean">
      <attribute name="init">
        <Boolean value="true"/>
      </attribute>
    </define-variable>
    <define-variable name="GS.vfOutput" type="Boolean">
      <attribute name="reset">
        <Boolean value="false"/>
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
    <define-event name="GS.Antenna.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS.Antenna.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS.Antenna.evRepair">
      <attribute name="delay">
        <exponential>
          <parameter name="GS.Antenna.pMeu"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS.Receiver1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS.Receiver1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS.Receiver2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS.Receiver2.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS.Transmitter1.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS.Transmitter1.pLambda"/>
        </exponential>
      </attribute>
    </define-event>
    <define-event name="GS.Transmitter2.evFailure">
      <attribute name="delay">
        <exponential>
          <parameter name="GS.Transmitter2.pLambda"/>
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
    <assertion>
      <assignment>
        <variable name="GS.Antenna.vfOutput"/>
        <ite>
          <variable name="GS.Antenna.vsWorking"/>
          <variable name="GS.Antenna.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS.Receiver1.vfOutput"/>
        <ite>
          <variable name="GS.Receiver1.vsWorking"/>
          <variable name="GS.Receiver1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS.Receiver2.vfOutput"/>
        <ite>
          <variable name="GS.Receiver2.vsWorking"/>
          <variable name="GS.Receiver2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS.Transmitter1.vfOutput"/>
        <ite>
          <variable name="GS.Transmitter1.vsWorking"/>
          <variable name="GS.Transmitter1.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS.Transmitter2.vfOutput"/>
        <ite>
          <variable name="GS.Transmitter2.vsWorking"/>
          <variable name="GS.Transmitter2.vfInput"/>
          <Boolean value="false"/>
        </ite>
      </assignment>
      <assignment>
        <variable name="GS.Antenna.vfInput"/>
        <Boolean value="true"/>
      </assignment>
      <assignment>
        <variable name="GS.Transmitter1.vfInput"/>
        <variable name="GS.Antenna.vfOutput"/>
      </assignment>
      <assignment>
        <variable name="GS.Transmitter2.vfInput"/>
        <variable name="GS.Antenna.vfOutput"/>
      </assignment>
      <assignment>
        <variable name="GS.Receiver1.vfInput"/>
        <or>
          <variable name="GS.Transmitter1.vfOutput"/>
          <variable name="GS.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="GS.Receiver2.vfInput"/>
        <or>
          <variable name="GS.Transmitter1.vfOutput"/>
          <variable name="GS.Transmitter2.vfOutput"/>
        </or>
      </assignment>
      <assignment>
        <variable name="GS.vfOutput"/>
        <or>
          <variable name="GS.Receiver1.vfOutput"/>
          <variable name="GS.Receiver2.vfOutput"/>
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
    </assertion>
    <transition>
      <event name="GS.Antenna.evFailure"/>
      <variable name="GS.Antenna.vsWorking"/>
      <assignment>
        <variable name="GS.Antenna.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS.Antenna.evRepair"/>
      <not>
        <variable name="GS.Antenna.vsWorking"/>
      </not>
      <assignment>
        <variable name="GS.Antenna.vsWorking"/>
        <Boolean value="true"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS.Receiver1.evFailure"/>
      <variable name="GS.Receiver1.vsWorking"/>
      <assignment>
        <variable name="GS.Receiver1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS.Receiver2.evFailure"/>
      <variable name="GS.Receiver2.vsWorking"/>
      <assignment>
        <variable name="GS.Receiver2.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS.Transmitter1.evFailure"/>
      <variable name="GS.Transmitter1.vsWorking"/>
      <assignment>
        <variable name="GS.Transmitter1.vsWorking"/>
        <Boolean value="false"/>
      </assignment>
    </transition>
    <transition>
      <event name="GS.Transmitter2.evFailure"/>
      <variable name="GS.Transmitter2.vsWorking"/>
      <assignment>
        <variable name="GS.Transmitter2.vsWorking"/>
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
  </define-block>
</altarica>
