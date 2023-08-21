net Asia
{
// property softwar aGrUM 1.9.0

	node smoke
	{
		TYPE = CPT;
		HEADER =
		{
			ID = smoke;
			NAME = "smoke";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.5, 0.5);
		};
	};

	node bronc
	{
		TYPE = CPT;
		HEADER =
		{
			ID = bronc;
			NAME = "bronc";
		};
		PARENTS = (smoke);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.6, 0.4, 0.3, 0.7);
		};
	};

	node lung
	{
		TYPE = CPT;
		HEADER =
		{
			ID = lung;
			NAME = "lung";
		};
		PARENTS = (smoke);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.1, 0.9, 0.01, 0.99);
		};
	};

	node asia
	{
		TYPE = CPT;
		HEADER =
		{
			ID = asia;
			NAME = "asia";
		};
		PARENTS = ();
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.01, 0.99);
		};
	};

	node tub
	{
		TYPE = CPT;
		HEADER =
		{
			ID = tub;
			NAME = "tub";
		};
		PARENTS = (asia);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.05, 0.95, 0.01, 0.99);
		};
	};

	node either
	{
		TYPE = CPT;
		HEADER =
		{
			ID = either;
			NAME = "either";
		};
		PARENTS = (tub, lung);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (1, 0, 1, 0, 1, 0, 0, 1);
		};
	};

	node dysp
	{
		TYPE = CPT;
		HEADER =
		{
			ID = dysp;
			NAME = "dysp";
		};
		PARENTS = (either, bronc);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.9, 0.1, 0.7, 0.3, 0.8, 0.2, 0.1, 0.9);
		};
	};

	node xray
	{
		TYPE = CPT;
		HEADER =
		{
			ID = xray;
			NAME = "xray";
		};
		PARENTS = (either);
		DEFINITION =
		{
			NAMESTATES = (yes, no);
			PROBABILITIES = (0.98, 0.02, 0.05, 0.95);
		};
	};

};