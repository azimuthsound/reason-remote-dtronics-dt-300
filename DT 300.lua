function remote_init()
	local items={

		{name="LFO Rate", input="value", min=0, max=127},
		{name="LFO Delay", input="value", min=0, max=127},
		
		{name="DCO Range", input="value", min=0, max=127},
		{name="DCO LFO", input="value", min=0, max=127},
		{name="DCO Env", input="value", min=0, max=127},
		{name="DCO Env Mode", input="value", min=0, max=127},
		{name="DCO Aftertouch", input="value", min=0, max=127},

		{name="Pulse", input="value", min=0, max=127},
		{name="Sawtooth", input="value", min=0, max=127},
		{name="Sub", input="value", min=0, max=127},
		{name="Sub Level", input="value", min=0, max=127},
		{name="Noise Level", input="value", min=0, max=127},
		{name="PWM", input="value", min=0, max=127},
		{name="PWM Rate", input="value", min=0, max=127},

		{name="VCF HPF", input="value", min=0, max=127},
		{name="VCF Freq", input="value", min=0, max=127},
		{name="VCF Res", input="value", min=0, max=127},
		{name="VCF LFO", input="value", min=0, max=127},
		{name="VCF Env", input="value", min=0, max=127},
		{name="VCF Env Mode", input="value", min=0, max=127},
		{name="VCF Key Follow", input="value", min=0, max=127},
		{name="VCF Aftertouch", input="value", min=0, max=127},
		
		{name="VCA Level", input="value", min=0, max=127},
		{name="VCA Env Mode", input="value", min=0, max=127},
		{name="VCA Aftertouch", input="value", min=0, max=127},
		
		{name="Chorus On", input="value", min=0, max=127},
		{name="Chorus Rate", input="value", min=0, max=127},
		
		{name="Env T1", input="value", min=0, max=127},
		{name="Env T2", input="value", min=0, max=127},
		{name="Env T3", input="value", min=0, max=127},
		{name="Env T4", input="value", min=0, max=127},	
			
		{name="Env L1", input="value", min=0, max=127},
		{name="Env L2", input="value", min=0, max=127},
		{name="Env L3", input="value", min=0, max=127},
		
		{name="Env Key Follow", input="value", min=0, max=127},
		
		{name="Bender Range", input="value", min=0, max=127},
		

	}
	remote.define_items(items)

	local inputs={
	

		{pattern="b? 18 xx", name="LFO Rate"},
		{pattern="b? 1b xx", name="LFO Delay"},
		
		{pattern="b? 2a xx", name="DCO Range"},
		{pattern="b? 2f xx", name="DCO LFO"},
		{pattern="b? 30 xx", name="DCO Env"},
		{pattern="b? 24 xx", name="DCO Env Mode"},
		{pattern="b? 31 xx", name="DCO Aftertouch"},
		
		{pattern="b? 27 xx", name="Pulse"},
		{pattern="b? 28 xx", name="Sawtooth"},
		{pattern="b? 29 xx", name="Sub"},
		{pattern="b? 2b xx", name="Sub Level"},
		{pattern="b? 2c xx", name="Noise Level"},
		{pattern="b? 23 xx", name="PWM"},
		{pattern="b? 1a xx", name="PWM Rate"},
		
		{pattern="b? 2d xx", name="VCF HPF"},
		{pattern="b? 32 xx", name="VCF Freq"},
		{pattern="b? 38 xx", name="VCF Res"},
		{pattern="b? 36 xx", name="VCF LFO"},
		{pattern="b? 34 xx", name="VCF Env"},
		{pattern="b? 25 xx", name="VCF Env Mode"},
		{pattern="b? 33 xx", name="VCF Key Follow"},
		{pattern="b? 35 xx", name="VCF Aftertouch"},	
		
		{pattern="b? 39 xx", name="VCA Level"},
		{pattern="b? 26 xx", name="VCA Env Mode"},
		{pattern="b? 3a xx", name="VCA Aftertouch"},
		
		{pattern="b? 54 xx", name="Chorus On"},
		{pattern="b? 55 xx", name="Chorus Rate"},
		
		{pattern="b? 53 xx", name="Env T1"},
		{pattern="b? 50 xx", name="Env T2"},	
		{pattern="b? 4c xx", name="Env T3"},
		{pattern="b? 4e xx", name="Env T4"},
		
		{pattern="b? 4f xx", name="Env L1"},
		{pattern="b? 51 xx", name="Env L2"},
		{pattern="b? 4d xx", name="Env L3"},
		
		{pattern="b? 52 xx", name="Env Key Follow"},

		{pattern="b? 2e xx", name="Bender Range"},


	}
	remote.define_auto_inputs(inputs)

	local outputs={
	}
	remote.define_auto_outputs(outputs)

end
