# LambdaMOO.app/Contents/MacOS/LambdaMOO
# LambdaMOO.app/Contents/Resources/moo
# LambdaMOO.app/Contents/Resources/appIcon.icns
# LambdaMOO.app/Contents/Resources/MainMenu.nib
# LambdaMOO.app/Contents/Resources/AppSettings.plist
# LambdaMOO.app/Contents/Resources/script
# LambdaMOO.app/Contents/Resources/docIcon.icns
# LambdaMOO.app/Contents/Info.plist

APP = LambdaMOO.app
CONTENTS = $(APP)/Contents
RESOURCES = $(CONTENTS)/Resources

SRC=MOO-1.8.1

$(RESOURCES)/moo: $(SRC)/moo
	cp $(SRC)/moo $(RESOURCES)/moo

$(SRC)/moo:
	( cd $(SRC) ; ./configure )
	make -C $(SRC)
