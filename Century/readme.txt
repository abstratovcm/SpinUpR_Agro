11/10/98

The parameter files:
	crop.100
	cult.100
	fert.100
	fire.100
	fix.100
	graz.100
	harv.100
	irri.100
	omad.100
	tree.100
	trem.100
	<site>.100  <- your site specific parameter file
	*.sch       <- your schedule file for the simulation
	*.wth       <- optional, a historical weather data file for the site

The parameter definition files (must be in the directory when running FILE100):
	crop.def
	cult.def
	fert.def
	fire.def
	fix.def
	graz.def
	harv.def
	irri.def
	omad.def
	site.def
	tree.def
	trem.def

The values in the site files are based on information gathered at LTER sites.  For more information about the LTER (Long-Term Ecological Research) program or the individual sites please access the LTER homepage - http://lternet.edu.  The sample site files include:
	aridsl.100 - Jornada Experimental Range, hot desert
	boreal.100 - Bonanza Creek Experimental Forest, boreal forest
	c3grs.100  - Shortgrass Steppe, shortgrass steppe (formerly called Central Plains Experimental Range)
	c4grs.100  - Konza Prairie Research Natural Area, tallgrass prairie
	tconif.100 - H.J. Andrews Experimental Forest, temperate coniferous forest
	tdecid.100 - Cowetta Hydrologic Lab, eastern deciduous forest
	tropeg.100 - Luquillo Experimental Forest, tropical rain forest
	tsavan.100 - Konza Prairie Research Natural Area, tallgrass prairie
	tundra.100 - Niwot Ridge/Green Lake Valley, alpine tundra

The sample schedule files are:
	aridsl.sch - northern hemisphere arid shrubland
	boreal.sch - boreal forest
	c3grs.sch  - northern hemisphere c3 dominated
	c4grs.sch  - northern hemisphere c4 dominated
	tconif.sch - temerate mixed forest
	tdecid.sch - temperate deciduous forest
	tropeg.sch - tropical evergreen forest
	tsavan.sch - temperate savanna
	tundra.sch - northern hemisphere tundra (grass)

The biome specific fix files differ primarily in the FWLOSS(x) parameters that adjust the relative impact of a PET equation originally developed for the tropics.  Select the appropriate fix file for your site from the list below and copy it to "fix.100" before running your simulation.  When simulating a savanna use the fix file that corresponds to the grass component of your system.
	arcfix.100   - arctic tundra
	borfix.100   - boreal forest
	dryffix.100  - dry forest
	drygfix.100  - dry grassland
	drytrpfi.100 - dry tropical
	ffix.100     - forest
	gfix.100     - mesic/subhimid grassland
	trpfix.100   - tropical

Please send an e-mail message to century@nrel.colostate.edu to report any problems or to ask questions about the CENTURY model.
