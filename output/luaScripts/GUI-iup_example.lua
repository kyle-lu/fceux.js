-- iup example
-- this shows a test window with all kinds of idle dialogs
-- docs: http://www.tecgraf.puc-rio.br/iup/

-- include our generic script (TAKES CARE OF CLOSING DIALOGS and includes the two iup systems)
require("auxlib");

-- Note that in the following example, parentheses are optional if you
-- are specifying tables with curly braces! Might look a little confusing.
function testiup()

	local img1 = 
		iup.image{
		  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1},
		  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1},
		  {1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1},
		  {1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1},
		  {1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1},
		  {1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1},
		  {1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1},
		  {1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,3,2,3,2,3,2,2,3,2,2,2,3,3,3,2,2,2,3,3,2,3,2,2,3,3,3,2,2,2},
		  {2,2,2,3,2,3,3,2,3,3,2,3,2,3,2,2,2,3,2,3,2,2,3,3,2,3,2,2,2,3,2,2},
		  {2,2,2,3,2,3,2,2,3,2,2,3,2,2,2,2,2,3,2,3,2,2,2,3,2,3,2,2,2,3,2,2},
		  {2,2,2,3,2,3,2,2,3,2,2,3,2,2,3,3,3,3,2,3,2,2,2,3,2,3,3,3,3,3,2,2},
		  {2,2,2,3,2,3,2,2,3,2,2,3,2,3,2,2,2,3,2,3,2,2,2,3,2,3,2,2,2,2,2,2},
		  {2,2,2,3,2,3,2,2,3,2,2,3,2,3,2,2,2,3,2,3,2,2,3,3,2,3,2,2,2,3,2,2},
		  {2,2,2,3,2,3,2,2,3,2,2,3,2,2,3,3,3,3,2,2,3,3,2,3,2,2,3,3,3,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,2,2,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,2,2,3,2,2,2,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,2,2,2,2,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1},
		  {1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1},
		  {1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1},
		  {1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		  {1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		  {1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		  {1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}; -- note that this ; is NOT the end of the command but a mere seperator, equivalent to a comma (,)
		  colors =
		  {
				"BGCOLOR", -- 1
				"255 0 0", -- 2
				"0 0 0"    -- 3  (changed because of Lua index starts at 1)
		  }
		}

	local img2 = 
		iup.image{
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,2,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,2,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2},
		  {2,2,2,2,2,2,2,2,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
		  {3,3,3,4,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
		  {3,3,3,4,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
		  {3,3,3,4,3,4,3,4,3,3,4,3,3,3,1,1,4,3,3,3,4,4,3,4,3,3,4,4,4,3,3,3},
		  {3,3,3,4,3,4,4,3,4,4,3,4,3,4,1,1,3,4,3,4,3,3,4,4,3,4,3,3,3,4,3,3},
		  {3,3,3,4,3,4,3,3,4,3,3,4,3,3,1,1,3,4,3,4,3,3,3,4,3,4,3,3,3,4,3,3},
		  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		  {3,3,3,4,3,4,3,3,4,3,3,4,3,4,1,1,3,4,3,4,3,3,4,4,3,4,3,3,3,4,3,3},
		  {3,3,3,4,3,4,3,3,4,3,3,4,3,3,1,1,4,4,3,3,4,4,3,4,3,3,4,4,4,3,3,3},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,4,3,3,3,3,3,3,3,3},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,4,3,3,3,4,3,3,3,3,3,3,3,3},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,4,4,4,3,3,3,3,3,3,3,3,3},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
		  {2,2,2,2,2,2,2,3,3,3,3,3,3,3,1,1,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,2,2,2,3,3,3,3,3,3,3,3,1,1,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2},
		  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}; -- note that this ; is NOT the end of the command but a mere seperator, equivalent to a comma (,)
		  colors =
		  {
				"0 255 0", -- 1
				"BGCOLOR", -- 2
				"255 0 0", -- 3
				"0 0 0"    -- 4
		  }
		}

	mnu = iup.menu{
	  iup.submenu{
			title="IupSubMenu 1",
			iup.menu {
			  iup.item{title="IupItem 1 Checked",value="ON"},
			  iup.separator{},
			  iup.item{title="IupItem 2 Disabled",active="NO"}
			}
	  },
	  iup.item{title="IupItem 3"},
	  iup.item{title="IupItem 4"}
	}

	btn = iup.button{title="Press me!"};
	-- set the callback function, action
	-- when the user clicks on the button, this function is executed
	-- and in this case, it fires a silly popup message
	btn.action = 
		function (self) 
			iup.Message("Why","Why oh why did you press me?"); 
		end
	
	dialogs = dialogs + 1; -- there is no ++ in Lua
	handles[dialogs] = 
		iup.dialog{
			title="IupDialog Title",
			menu=mnu, -- add the menu in the table
		  iup.vbox{
				iup.hbox{
				  iup.frame{
						title="IupButton",
						iup.vbox{
						  btn, -- add the button
						  iup.button{title="",image=img1},
						  iup.button{title="",image=img1,impress=img2}
						}
				  },
				  iup.frame{
				  	title="IupLabel",
						iup.vbox{
						  iup.label{title="Label Text"},
						  iup.label{title="",separator="HORIZONTAL"},
						  iup.label{title="",image=img1}
						}
				  },
				  iup.frame{
				  	title="IupToggle",
						iup.vbox{
						  iup.toggle{title="Toggle Text", value="ON"},
						  iup.toggle{title="",image=img1,impress=img2},
						  iup.frame{
						  	title="IupRadio",
								iup.radio{
								  iup.vbox{
								   iup.toggle{title="Toggle Text"},
								   iup.toggle{title="Toggle Text"}
								  }
								}
						  } -- /frame
						} -- /vbox
				  },
				  iup.frame{
				  	title="IupText/IupMultiline",
						iup.vbox{
						  iup.text{size="80x",value="IupText Text"},
						  iup.multiline{size="80x60",
						  expand="YES",
						  value="IupMultiline Text\nSecond Line\nThird Line"}
						}
				  },
				  iup.frame{
				  	title="IupList",
						iup.vbox{
						  iup.list{"Item 1 Text","Item 2 Text","Item 3 Text"; expand="YES",value="1"},
						  iup.list{"Item 1 Text","Item 2 Text","Item 3 Text"; dropdown="YES",expand="YES",value="2"},
						  iup.list{"Item 1 Text","Item 2 Text","Item 3 Text"; editbox="YES",expand="YES",value="3"}
						}     
				  }
				}, -- /hbox
				iup.canvas{bgcolor="128 255 0"},
				gap="5",
				alignment="ARIGHT",
				margin="5x5"
		  } -- /vbox
		};

	handles[dialogs]:show(); -- this actually shows you the dialog. Note that this is equivalent to calling handles[dialogs].show(handles[dialogs]); just shorter.

end

testiup(); -- note that this is not called from within the loop!

-- once the loop quits, the script exits and all dialogs are automatically destroyed
while (true) do
	FCEU.frameadvance();
end;