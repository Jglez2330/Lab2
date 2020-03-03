entity FourBitFullAdder is
port(
	cin : in std_logic;
	aMSB_0 : in std_logic;
	aMSB_1 : in std_logic;
	b_0 : in std_logic;
	b_1 : in std_logic;
	c_0 : in std_logic;
	c_1 : in std_logic;
	dLSB_0 : in std_logic;
	dLSB_1 : in std_logic;
	outputaMSB: out std_logic;
	outputb: out std_logic;
	outputc: out std_logic;
	outputdLSB: out std_logic;
	cout: out std_logic);
end FourBitFullAdder;

architecture FourBitFullAdderLogic of FourBitFullAdder is
signal coutB, coutC, coutD : std_logic;
begin
	FullAdderAMSB: entity work.OneBitFullAdder port map(coutB,aMSB_0,aMSB_1,outputaMSB, cout);
	FullAdderB: entity work.OneBitFullAdder port map(coutC,b_0,b_1,outputb, coutB);
	FullAdderC: entity work.OneBitFullAdder port map(coutD,c_0,c_1,outputc, coutC);
	FullAdderDLSB: entity work.OneBitFullAdder port map(cin,dLSB_0,dLSB_1,outputdLSB, coutD);
end FourBitFullAdderLogic;