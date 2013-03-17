(*********************************************************************
 *   LomCN Mir3 GUI Defination control File 2012                     *
 *                                                                   *
 *   Web       : http://www.lomcn.co.uk                              *
 *   Version   : 0.0.0.7                                             *
 *                                                                   *
 *   - File Info -                                                   *
 *                                                                   *
 *   Hold all GUI Definations                                        *
 *                                                                   *
 *                                                                   *
 *                                                                   *
 *********************************************************************
 * Change History                                                    *
 *                                                                   *
 *  - 0.0.0.1 [2012-10-08] Coly : fist init                          *
 *  - 0.0.0.2 [2013-02-27] Coly : change the Control Config          *
 *  - 0.0.0.3 [2013-03-02] Coly : add more GUI Definations           *
 *  - 0.0.0.4 [2013-03-04] Coly : add more GUI Definations           *
 *  - 0.0.0.5 [2013-03-07] Coly : add Edit Option Fiels              *
 *  - 0.0.0.6 [2013-03-12] Coly : add Exit Win and other             *
 *  - 0.0.0.7 [2013-03-14] Coly : add Body Window                    *
 *                                                                   *
 *                                                                   *
 *                                                                   *
 *********************************************************************
 *  - TODO List for this *.pas file -                                *
 *-------------------------------------------------------------------*
 *  if a todo finished, then delete it here...                       *
 *  if you find a global TODO thats need to do, then add it here..   *
 *-------------------------------------------------------------------*
 *                                                                   *
 *  - TODO : -all -fill *.pas header information                     *
 *                 (how to need this file etc.)                      *
 *                                                                   *
 *  - TODO : -all -Check if Frame timing correct at MonActions       *
 *                                                                   *
 *********************************************************************)
unit mir3_game_gui_defination;

interface

uses
  Windows, Classes, SysUtils,
  Direct3D9, D3DX9,
  mir3_core_controls, mir3_global_config, mir3_game_file_manager_const,
  mir3_game_font_engine;

const
  //Unique Control Numbers

  (* System Info Control IDs *)
  {$REGION ' - System Dialog  Global Use (10-50) '}
  GUI_ID_SYSINFO_DIALOG                           = 10;   // Base Info Window
  GUI_ID_SYSINFO_PANEL                            = 11;   // Static Text Field
  GUI_ID_SYSINFO_EDIT_FIELD                       = 12;   // For Input like PW on Char Deletion
  GUI_ID_SYSINFO_BUTTON_OK                        = 13;   // OK Button
  GUI_ID_SYSINFO_BUTTON_YES                       = 14;   // Yes Button
  GUI_ID_SYSINFO_BUTTON_NO                        = 15;   // No Button
  GUI_ID_SYSINFO_BUTTON_FREE_CENTER               = 16;   // Free Center Buttons
  GUI_ID_SYSINFO_BUTTON_FREE_LEFT                 = 17;   // Free Left Buttons
  GUI_ID_SYSINFO_BUTTON_FREE_RIGHT                = 18;   // Free Right Buttons
  {$ENDREGION}

  (* Login Control IDs *)
  {$REGION ' - Login Control IDs                  '}
  GUI_ID_LOGIN_BACKGROUND                         = 100;
  GUI_ID_LOGIN_BACKPANEL_1                        = 101;
  GUI_ID_LOGIN_BACKPANEL_2                        = 102;
  GUI_ID_LOGIN_EDIT_USER                          = 103;
  GUI_ID_LOGIN_EDIT_PASSWORD                      = 104;
  GUI_ID_LOGIN_BUTTON_EXIT                        = 105;
  GUI_ID_LOGIN_BUTTON_LOGIN                       = 106;
  GUI_ID_LOGIN_BUTTON_URL_1                       = 107;
  GUI_ID_LOGIN_BUTTON_URL_2                       = 108;
  GUI_ID_LOGIN_BUTTON_INFO                        = 109;
  {$ENDREGION}

  (* SelectChar Control IDs *)
  {$REGION ' - SelectChar Control IDs             '}
  GUI_ID_SELECTCHAR_BACKGROUND                    = 150;
  GUI_ID_SELECTCHAR_CHARACTER                     = 151;   // Helper Field, don't change it
  GUI_ID_SELECTCHAR_CHARACTER_1                   = 151;
  GUI_ID_SELECTCHAR_CHARACTER_2                   = 152;
  GUI_ID_SELECTCHAR_CHARACTER_3                   = 153;
  GUI_ID_SELECTCHAR_BUTTON_START                  = 154;
  GUI_ID_SELECTCHAR_BUTTON_EXIT                   = 155;
  GUI_ID_SELECTCHAR_BUTTON_DELETE_CHAR            = 156;
  GUI_ID_SELECTCHAR_BUTTON_NEW_CHAR               = 157;
  GUI_ID_SELECTCHAR_INFO_PANEL                    = 158;
  GUI_ID_SELECTCHAR_INFO_NAME                     = 159;
  GUI_ID_SELECTCHAR_INFO_CLASS                    = 160;
  GUI_ID_SELECTCHAR_INFO_LEVEL                    = 161;
  GUI_ID_SELECTCHAR_INFO_GOLD                     = 162;
  GUI_ID_SELECTCHAR_INFO_EXP                      = 163;
  GUI_ID_SELECTCHAR_INFO_NAME_INFO                = 164;
  GUI_ID_SELECTCHAR_INFO_CLASS_INFO               = 165;
  GUI_ID_SELECTCHAR_INFO_LEVEL_INFO               = 166;
  GUI_ID_SELECTCHAR_INFO_GOLD_INFO                = 167;
  GUI_ID_SELECTCHAR_INFO_EXP_INFO                 = 168;
  {$ENDREGION}

  (* CreateChar Control IDs *)
  {$REGION ' - CreateChar Control IDs             '}
  GUI_ID_CREATECHAR_BACKGROUND                    = 170;
  GUI_ID_CREATECHAR_CHARACTER_MALE                = 171;
  GUI_ID_CREATECHAR_CHARACTER_FEMALE              = 172;
  GUI_ID_CREATECHAR_PANEL_STONE_SHADOW            = 173;
  GUI_ID_CREATECHAR_PANEL_STONE                   = 174;
  GUI_ID_CREATECHAR_BUTTON_WARRIOR                = 175;
  GUI_ID_CREATECHAR_BUTTON_WIZZARD                = 176;
  GUI_ID_CREATECHAR_BUTTON_TAOIST                 = 177;
  GUI_ID_CREATECHAR_BUTTON_ASSASSIN               = 178;
  GUI_ID_CREATECHAR_BUTTON_OK                     = 179;
  GUI_ID_CREATECHAR_BUTTON_CANCEL                 = 180;
  GUI_ID_CREATECHAR_EDIT_CHAR_NAME                = 181;
  GUI_ID_CREATECHAR_INFO                          = 182;
  {$ENDREGION}

  (* InGame Control IDs *)
  {$REGION ' - InGame Scene Control IDs           '}
   //                                               = (50 - 200) und (226 - 300) k�nnen noch genutzt werden

  {$REGION ' - Trade GUI               (201-215) '}
  GUI_ID_INGAME_TRADE_UI_WINDOW                   = 201;
  GUI_ID_INGAME_TRADE_UI_EDIT_GOLD_FROM           = 202;
  GUI_ID_INGAME_TRADE_UI_EDIT_GOLD_TO             = 203;
  GUI_ID_INGAME_TRADE_UI_GRID_FROM                = 204;
  GUI_ID_INGAME_TRADE_UI_GRID_TO                  = 205;
  GUI_ID_INGAME_TRADE_UI_TEXT_NAME_FROM           = 206;
  GUI_ID_INGAME_TRADE_UI_TEXT_NAME_TO             = 207;
  GUI_ID_INGAME_TRADE_UI_BTN_TRADE                = 208;
  GUI_ID_INGAME_TRADE_UI_BTN_CLOSE                = 209;
  // Reserve 210 - 215
  {$ENDREGION}

  {$REGION ' - Group GUI               (216-225) '}
  GUI_ID_INGAME_GROUP_UI_WINDOW                   = 216;
  GUI_ID_INGAME_GROUP_UI_WINDOW_TEXT              = 217;
  GUI_ID_INGAME_GROUP_UI_LIST_MEMBER              = 218;
  GUI_ID_INGAME_GROUP_UI_BTN_ADD_MEMBER           = 219;
  GUI_ID_INGAME_GROUP_UI_BTN_DEL_MEMBER           = 220;
  GUI_ID_INGAME_GROUP_UI_BTN_CREATE_GROUP         = 221;
  GUI_ID_INGAME_GROUP_UI_BTN_PERMIT_GROUP         = 222;
  GUI_ID_INGAME_GROUP_UI_BTN_CLOSE                = 223;
  // Reserve 224 - 225
  {$ENDREGION}


  {$REGION ' - Exit Window GUI         (400-409) '}
  GUI_ID_INGAME_EXIT_WINDOW_UI_WINDOW             = 400;
  GUI_ID_INGAME_EXIT_TEXT_UI_INFO                 = 401;
  GUI_ID_INGAME_EXIT_BTN_UI_EXIT                  = 402;
  GUI_ID_INGAME_EXIT_BTN_UI_LOGOUT                = 403;
  GUI_ID_INGAME_EXIT_BTN_UI_CLOSE                 = 404;
  {$ENDREGION}

  {$REGION ' - Bottom GUI              (410-459) '}
  GUI_ID_INGAME_BOTTOM_UI_BACKGROUND              = 410;

  GUI_ID_INGAME_BOTTOM_UI_BUTTON_1_BODY           = 411;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_2_BAG            = 412;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_3_MAGIC          = 413;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_4_TRADE          = 414;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_5_BELT           = 415;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_6_MINIMAP        = 416;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_7_QUEST          = 417;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_8_SETTING        = 418;

  GUI_ID_INGAME_BOTTOM_UI_BUTTON_POWER            = 419;
  GUI_ID_INGAME_BOTTOM_UI_BUTTON_BC               = 420;

  GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_CLASS        = 421;
  GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_LEVEL        = 422;
  GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_FAIME        = 423;
  GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_POWER        = 424; //DC SC MC BC
  GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_AC           = 425;
  GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_MA           = 426;

  GUI_ID_INGAME_BOTTOM_UI_GAUGE_HP                = 450;
  GUI_ID_INGAME_BOTTOM_UI_GAUGE_MP                = 451;
  GUI_ID_INGAME_BOTTOM_UI_GAUGE_EXP               = 452;
  GUI_ID_INGAME_BOTTOM_UI_GAUGE_BAG_SIZE          = 453;

  GUI_ID_INGAME_BOTTOM_UI_AVATAR_BACKGROUND       = 454;
  GUI_ID_INGAME_BOTTOM_UI_AVATAR_LOW_PANEL        = 455;
  GUI_ID_INGAME_BOTTOM_UI_AVATAR_LOW_PANEL_BACK   = 456;
  GUI_ID_INGAME_BOTTOM_UI_AVATAR_HIGH_PANEL       = 457;
  GUI_ID_INGAME_BOTTOM_UI_AVATAR_HIGH_PANEL_BACK  = 458;
  {$ENDREGION}

  {$REGION ' - Menue Bar GUI           (460-479) '}
  GUI_ID_INGAME_MENUEBAR_UI_WINDOW                = 460;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_SETTING           = 461;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_CHAT              = 462;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_MAIL              = 463;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_GROUP             = 464;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_GUILD             = 465;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_AVATAR            = 466;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_SIEGE             = 467;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_EXIT              = 468;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_FEATURE           = 469;
  GUI_ID_INGAME_MENUEBAR_UI_BTN_CLOSE             = 470;
  {$ENDREGION}

  {$REGION ' - Belt GUI                (480-489) '}
  GUI_ID_INGAME_BELT_UI_BACKGROUND                = 480;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_1              = 481;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_2              = 482;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_3              = 483;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_4              = 484;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_5              = 485;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_6              = 486;
  GUI_ID_INGAME_BELT_UI_BTN_ROTATE                = 487;
  GUI_ID_INGAME_BELT_UI_BTN_CLOSE                 = 488;
  // Reserve 489
  {$ENDREGION}

  {$REGION ' - Bag Base GUI            (490-499) '}
  GUI_ID_INGAME_BAG_BASE_UI_WINDOW                = 490;
  GUI_ID_INGAME_BAG_UI_WINDOW_TEXT                = 491;
  GUI_ID_INGAME_BAG_UI_GRID_ITEMS                 = 492;
  GUI_ID_INGAME_BAG_UI_TEXT_GOLD                  = 493;
  GUI_ID_INGAME_BAG_UI_TEXT_POINTS                = 494;
  GUI_ID_INGAME_BAG_UI_BTN_MULTI                  = 495;  // Used for Repair, Sell, Buy etc.
  GUI_ID_INGAME_BAG_UI_BTN_CLOSE                  = 496;
  // Reserve  497 - 499
  {$ENDREGION}


  {$REGION ' - Game Setting GUI        (600-705) '}
  GUI_ID_INGAME_GAME_SETTING_UI_WINDOW            = 600;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_CLOSE         = 601;

  GUI_ID_INGAME_GAME_SETTING_UI_BTN_BASIC         = 602;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_PERMIT        = 603;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_CHATTING      = 604;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_VISUAL        = 605;
  { Page 1 Basic }
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P1          = 606;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P1          = 607;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_3_P1          = 608;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P1          = 609;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P1          = 610;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_6_P1          = 611;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_7_P1          = 612;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_8_P1          = 613;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_9_P1          = 614;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_10_P1         = 615;   // reserve
  { Page 2 Permit }
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P2          = 616;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P2          = 617;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_3_P2          = 618;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P2          = 619;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P2          = 620;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_6_P2          = 621;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_7_P2          = 622;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_8_P2          = 623;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_9_P2          = 624;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_10_P2         = 625;   // reserve
  { Page 3 Chatting }
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P3          = 626;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P3          = 627;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_3_P3          = 628;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P3          = 629;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P3          = 630;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_6_P3          = 631;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_7_P3          = 632;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_8_P3          = 633;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_9_P3          = 634;   // reserve
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_10_P3         = 635;   // reserve
  { Page 4 Visual }
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P4          = 636;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P4          = 637;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_3_P4          = 638;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P4          = 639;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P4          = 640;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_6_P4          = 641;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_7_P4          = 642;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_8_P4          = 643;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_9_P4          = 644;
  GUI_ID_INGAME_GAME_SETTING_UI_BTN_10_P4         = 645;
  { Page 1 Basic Volume Slider }
  GUI_ID_INGAME_GAME_SETTING_UI_SLIDER_BGM        = 646;
  GUI_ID_INGAME_GAME_SETTING_UI_SLIDER_SFX        = 647;
  { Page 1 Basic Text Controls }
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P1   = 656;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P1   = 657;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_3_P1   = 658;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P1   = 659;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P1   = 660;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_6_P1   = 661;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_7_P1   = 662;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_8_P1   = 663;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_9_P1   = 664;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_10_P1  = 665;
  { Page 2 Permit Text Controls }
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P2   = 666;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P2   = 667;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_3_P2   = 668;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P2   = 669;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P2   = 670;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_6_P2   = 671;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_7_P2   = 672;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_8_P2   = 673;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_9_P2   = 674;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_10_P2  = 675;
  { Page 3 Chatting Text Controls }
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P3   = 676;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P3   = 677;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_3_P3   = 678;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P3   = 679;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P3   = 680;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_6_P3   = 691;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_7_P3   = 692;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_8_P3   = 693;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_9_P3   = 694;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_10_P3  = 695;
  { Page 4 Visual Text Controls }
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P4   = 696;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P4   = 697;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_3_P4   = 698;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P4   = 699;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P4   = 700;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_6_P4   = 701;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_7_P4   = 702;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_8_P4   = 703;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_9_P4   = 704;
  GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_10_P4  = 705;

  {$ENDREGION}

  {$REGION ' - Magic Base GUI          (750-xxx) '}
  {Magic Base and Assassin GUI}
  GUI_ID_INGAME_MAGIC_UI_BASE_WINDOW              = 750;

  GUI_ID_INGAME_MAGIC_UI_ASSASSIN_WINDOW          = 800;
  {$ENDREGION}

  {$REGION ' - Body Base GUI           (900-990) '}
  {Body Base GUI}
  GUI_ID_INGAME_BODY_UI_WINDOW                    = 900;
  GUI_ID_INGAME_BODY_UI_BTN_CLOSE                 = 901;
  GUI_ID_INGAME_BODY_UI_PANEL_WING                = 902;
  GUI_ID_INGAME_BODY_UI_PANEL_BODY                = 903;
  GUI_ID_INGAME_BODY_UI_PANEL_HAIR                = 904;
  GUI_ID_INGAME_BODY_UI_PANEL_HELMET              = 905;
  GUI_ID_INGAME_BODY_UI_PANEL_WEAPON              = 906;
  GUI_ID_INGAME_BODY_UI_PANEL_HERO                = 907; // Top Right Hero Animation
  GUI_ID_INGAME_BODY_UI_PANEL_HEART               = 908;
  { Item Slots }
  GUI_ID_INGAME_BODY_UI_ITEM_HORSE                = 909;
  GUI_ID_INGAME_BODY_UI_ITEM_NECKLASE             = 910;
  GUI_ID_INGAME_BODY_UI_ITEM_BRACE_L              = 911;
  GUI_ID_INGAME_BODY_UI_ITEM_BRACE_R              = 912;
  GUI_ID_INGAME_BODY_UI_ITEM_RING_L               = 913;
  GUI_ID_INGAME_BODY_UI_ITEM_RING_R               = 914;
  GUI_ID_INGAME_BODY_UI_ITEM_SHOES                = 915;
  GUI_ID_INGAME_BODY_UI_ITEM_LIGHT                = 916;
  GUI_ID_INGAME_BODY_UI_ITEM_TALISMAN             = 917;
  GUI_ID_INGAME_BODY_UI_ITEM_MEDAL                = 918;
  { Text Fields }
  GUI_ID_INGAME_BODY_UI_TEXT_PANEL                = 919; // 3 Lines Name / Guild / Rang
  GUI_ID_INGAME_BODY_UI_TEXT_SPOUSE               = 920; // 
  { Info Text }
  GUI_ID_INGAME_BODY_UI_TEXT_1_LVL                = 921; // Level
  GUI_ID_INGAME_BODY_UI_TEXT_2_EXP                = 922; // Experience
  GUI_ID_INGAME_BODY_UI_TEXT_3_HP                 = 923; // Health Points (HP)
  GUI_ID_INGAME_BODY_UI_TEXT_4_MP                 = 924; // Mana Points (MP)
  GUI_ID_INGAME_BODY_UI_TEXT_5_BGW                = 925; // Bag Weight
  GUI_ID_INGAME_BODY_UI_TEXT_6_BOW                = 926; // Body Weight
  GUI_ID_INGAME_BODY_UI_TEXT_7_HAW                = 927; // Hand Weight
  GUI_ID_INGAME_BODY_UI_TEXT_8_ACC                = 928; // Accuracy 
  GUI_ID_INGAME_BODY_UI_TEXT_9_AGI                = 929; // Agility
  { Bottom Info }
  GUI_ID_INGAME_BODY_UI_TEXT_10                   = 931; // DC 0000-0000
  GUI_ID_INGAME_BODY_UI_TEXT_11                   = 932; // AC 0000-0000
  GUI_ID_INGAME_BODY_UI_TEXT_12                   = 933; // free pos
  GUI_ID_INGAME_BODY_UI_TEXT_13                   = 934; // MC 0000-0000 (M-Nature)
  GUI_ID_INGAME_BODY_UI_TEXT_14                   = 935; // SC 0000-0000 (M-Soul)
  GUI_ID_INGAME_BODY_UI_TEXT_15                   = 936; // MR 0000-0000
  GUI_ID_INGAME_BODY_UI_TEXT_16_EL_ATT            = 937; // Element Att (Attack Power)
  GUI_ID_INGAME_BODY_UI_TEXT_17_EL_ADV            = 938; // Element Adv (Defence)
  GUI_ID_INGAME_BODY_UI_TEXT_18_EL_DIS            = 939; // Element Dis (Weakness)
  { E = 21 Texts + 21 Textures}
  {Element Things}
  GUI_ID_INGAME_BODY_UI_TEXT_EL_FI_1              = 940; //Fire Att
  GUI_ID_INGAME_BODY_UI_TEXT_EL_FI_2              = 941; //Fire Adv
  GUI_ID_INGAME_BODY_UI_TEXT_EL_FI_3              = 942; //Fire Dis
  GUI_ID_INGAME_BODY_UI_TEXT_EL_IC_1              = 943; //Ice Att
  GUI_ID_INGAME_BODY_UI_TEXT_EL_IC_2              = 944; //Ice Adv
  GUI_ID_INGAME_BODY_UI_TEXT_EL_IC_3              = 945; //Ice Dis
  GUI_ID_INGAME_BODY_UI_TEXT_EL_TH_1              = 946; //Thunder Att
  GUI_ID_INGAME_BODY_UI_TEXT_EL_TH_2              = 947; //Thunder Adv
  GUI_ID_INGAME_BODY_UI_TEXT_EL_TH_3              = 948; //Thunder Dis
  GUI_ID_INGAME_BODY_UI_TEXT_EL_WI_1              = 949; //Wind Att
  GUI_ID_INGAME_BODY_UI_TEXT_EL_WI_2              = 950; //Wind Adv
  GUI_ID_INGAME_BODY_UI_TEXT_EL_WI_3              = 951; //Wind Dis
  GUI_ID_INGAME_BODY_UI_TEXT_EL_HO_1              = 952; //Holy Att
  GUI_ID_INGAME_BODY_UI_TEXT_EL_HO_2              = 953; //Holy Adv
  GUI_ID_INGAME_BODY_UI_TEXT_EL_HO_3              = 954; //Holy Dis
  GUI_ID_INGAME_BODY_UI_TEXT_EL_DA_1              = 955; //Dark Att
  GUI_ID_INGAME_BODY_UI_TEXT_EL_DA_2              = 956; //Dark Adv
  GUI_ID_INGAME_BODY_UI_TEXT_EL_DA_3              = 957; //Dark Dis  
  GUI_ID_INGAME_BODY_UI_TEXT_EL_PH_1              = 958; //Phantom Att
  GUI_ID_INGAME_BODY_UI_TEXT_EL_PH_2              = 959; //Phantom Adv
  GUI_ID_INGAME_BODY_UI_TEXT_EL_PH_3              = 960; //Phantom Dis  
                                                      
  GUI_ID_INGAME_BODY_UI_PANEL_EL_FI_1             = 961; //Fire Att
  GUI_ID_INGAME_BODY_UI_PANEL_EL_FI_2             = 962; //Fire Adv
  GUI_ID_INGAME_BODY_UI_PANEL_EL_FI_3             = 963; //Fire Dis
  GUI_ID_INGAME_BODY_UI_PANEL_EL_IC_1             = 964; //Ice Att
  GUI_ID_INGAME_BODY_UI_PANEL_EL_IC_2             = 965; //Ice Adv
  GUI_ID_INGAME_BODY_UI_PANEL_EL_IC_3             = 966; //Ice Dis
  GUI_ID_INGAME_BODY_UI_PANEL_EL_TH_1             = 967; //Thunder Att
  GUI_ID_INGAME_BODY_UI_PANEL_EL_TH_2             = 968; //Thunder Adv
  GUI_ID_INGAME_BODY_UI_PANEL_EL_TH_3             = 969; //Thunder Dis
  GUI_ID_INGAME_BODY_UI_PANEL_EL_WI_1             = 970; //Wind Att
  GUI_ID_INGAME_BODY_UI_PANEL_EL_WI_2             = 971; //Wind Adv
  GUI_ID_INGAME_BODY_UI_PANEL_EL_WI_3             = 972; //Wind Dis
  GUI_ID_INGAME_BODY_UI_PANEL_EL_HO_1             = 973; //Holy Att
  GUI_ID_INGAME_BODY_UI_PANEL_EL_HO_2             = 974; //Holy Adv
  GUI_ID_INGAME_BODY_UI_PANEL_EL_HO_3             = 975; //Holy Dis
  GUI_ID_INGAME_BODY_UI_PANEL_EL_DA_1             = 976; //Dark Att
  GUI_ID_INGAME_BODY_UI_PANEL_EL_DA_2             = 977; //Dark Adv
  GUI_ID_INGAME_BODY_UI_PANEL_EL_DA_3             = 978; //Dark Dis  
  GUI_ID_INGAME_BODY_UI_PANEL_EL_PH_1             = 979; //Phantom Att
  GUI_ID_INGAME_BODY_UI_PANEL_EL_PH_2             = 980; //Phantom Adv
  GUI_ID_INGAME_BODY_UI_PANEL_EL_PH_3             = 981; //Phantom Dis

  {$ENDREGION}

  {$REGION ' - Body Show Base GUI    (1000-1xxx) '}
  {Body Show Base GUI}
  GUI_ID_INGAME_BODY_SHOW_UI_WINDOW               = 1000; //
  GUI_ID_INGAME_BODY_SHOW_UI_BTN_CLOSE            = 1001; //
  GUI_ID_INGAME_BODY_SHOW_UI_BTN_ADD_TO_GROUP     = 1002; //
  GUI_ID_INGAME_BODY_SHOW_UI_BTN_SEND_WHISPER     = 1003; //
  GUI_ID_INGAME_BODY_SHOW_UI_BTN_SEND_MESSAGE     = 1004; //
  GUI_ID_INGAME_BODY_SHOW_UI_BTN_ADD_AS_FRIEND    = 1005; // Add to the friend list?  (it's a new button)
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_GUILD_FLAG     = 1006; //
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_WING           = 1007;
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_BODY           = 1008;
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_HAIR           = 1009;
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_HELMET         = 1010;
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_WEAPON         = 1011;
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_HERO           = 1012; // Top Right Hero Animation
  GUI_ID_INGAME_BODY_SHOW_UI_PANEL_HEART          = 1013;
  { Item Slots }
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_HORSE           = 1014;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_NECKLASE        = 1015;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_BRACE_L         = 1016;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_BRACE_R         = 1017;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_RING_L          = 1018;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_RING_R          = 1019;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_SHOES           = 1020;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_LIGHT           = 1021;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_TALISMAN        = 1022;
  GUI_ID_INGAME_BODY_SHOW_UI_ITEM_MEDAL           = 1023;
  { Text Fields }
  GUI_ID_INGAME_BODY_SHOW_UI_TEXT_PANEL           = 1024; // 3 Lines Name / Guild / Rang
  GUI_ID_INGAME_BODY_SHOW_UI_TEXT_SPOUSE          = 1025; //
  {$ENDREGION}

  {$ENDREGION}
  
type
  TMir3_GUI_Defination_System  = record
    (* System Info Dialoge *)
    {$REGION ' - System Dialog                                 '}
    FSys_Dialog_Info                     : TMir3_GUI_Ground_Info;  //basic Dialog Info Window
      FSys_Dialog_Text                   : TMir3_GUI_Ground_Info;  //Static Text field
      FSys_Dialog_Edit_Field             : TMir3_GUI_Ground_Info;  //Edit Field for some things 
      FSys_Button_Ok                     : TMir3_GUI_Ground_Info;  //Dialog OK Button
      FSys_Button_Yes                    : TMir3_GUI_Ground_Info;  //Dialog Yes Button
      FSys_Button_No                     : TMir3_GUI_Ground_Info;  //Dialog No Button
      FSys_Button_Free_Center            : TMir3_GUI_Ground_Info;  //Dialog Free Center Button
      FSys_Button_Free_Left              : TMir3_GUI_Ground_Info;  //Dialog Free Left Button
      FSys_Button_Free_Right             : TMir3_GUI_Ground_Info;  //Dialog Free Right Button
    {$ENDREGION}
  end;

  TMir3_GUI_Defination_Login   = record
    (* Login Scene *)
    {$REGION ' - Login Scene                                   '}
    FLogin_Background                    : TMir3_GUI_Ground_Info;  //used for random background texture and Contols Placeholder
      FLogin_BackPanel_1                 : TMir3_GUI_Ground_Info;  //used for the Edit Fields as background (Alphablendet)
      FLogin_BackPanel_2                 : TMir3_GUI_Ground_Info;  //used for the Edit Fields as background (Alphablendet)
      FLogin_EditField_User              : TMir3_GUI_Ground_Info;  //used for User Name Edit field
      FLogin_EditField_Password          : TMir3_GUI_Ground_Info;  //used for Password Edit field
      FLogin_Button_Exit                 : TMir3_GUI_Ground_Info;  //used as exit btn (in Mir3: Texture Text)
      FLogin_Button_Login                : TMir3_GUI_Ground_Info;  //used as exit btn (in Mir3: Texture Text)
      FLogin_Button_URL_1                : TMir3_GUI_Ground_Info;  //used as exit btn (in Mir3: Texture Text)
      FLogin_Button_URL_2                : TMir3_GUI_Ground_Info;  //used as exit btn (in Mir3: Texture Text)
      FLogin_Information_Field           : TMir3_GUI_Ground_Info;  //used for Text Information (like Debug FPS etc.)
    {$ENDREGION}
  end;

  TMir3_GUI_Defination_SelChar = record
    (* Select Char Scene *)
    {$REGION ' - Select Char and Create Char Scene             '}
    FSelectChar_Background               : TMir3_GUI_Ground_Info;  //used for Select Char background texture and Contols Placeholder
      FSelectChar_Character_1            : TMir3_GUI_Ground_Info;  // Character View 1
      FSelectChar_Character_2            : TMir3_GUI_Ground_Info;  // Character View 2
      FSelectChar_Character_3            : TMir3_GUI_Ground_Info;  // Character View 3
      FSelectChar_Button_Start           : TMir3_GUI_Ground_Info;  // Start Game
      FSelectChar_Button_Exit            : TMir3_GUI_Ground_Info;  // Exit Game
      FSelectChar_Button_Delete_Char     : TMir3_GUI_Ground_Info;  // Delete old Char
      FSelectChar_Button_New_Char        : TMir3_GUI_Ground_Info;  // Create new Char
      // Character Info
      FSelectChar_Dialog_Text            : TMir3_GUI_Ground_Info;  // Info Background
      FSelectChar_Dialog_Name            : TMir3_GUI_Ground_Info;  // Character Name Info
      FSelectChar_Dialog_Level           : TMir3_GUI_Ground_Info;  // Character Level Info
      FSelectChar_Dialog_Class           : TMir3_GUI_Ground_Info;  // Character Class Info
      FSelectChar_Dialog_Gold            : TMir3_GUI_Ground_Info;  // Character Gold Info
      FSelectChar_Dialog_Exp             : TMir3_GUI_Ground_Info;  // Character Exp Info
      FSelectChar_Dialog_Name_Info       : TMir3_GUI_Ground_Info;  // Character Name Value
      FSelectChar_Dialog_Level_Info      : TMir3_GUI_Ground_Info;  // Character Level Value
      FSelectChar_Dialog_Class_Info      : TMir3_GUI_Ground_Info;  // Character Class Value
      FSelectChar_Dialog_Gold_Info       : TMir3_GUI_Ground_Info;  // Character Gold Value
      FSelectChar_Dialog_Exp_Info        : TMir3_GUI_Ground_Info;  // Character Exp Value

    (* Create Char Scene *)
    FCreateChar_Background               : TMir3_GUI_Ground_Info;  // used for Create Char background texture and Contols Placeholder
      FCreateChar_Character_Male         : TMir3_GUI_Ground_Info;  // Character View Male 
      FCreateChar_Character_Female       : TMir3_GUI_Ground_Info;  // Character View Female
      FCreateChar_Panel_Stone_Shadow     : TMir3_GUI_Ground_Info;  // Stone Shadow
      FCreateChar_Panel_Stone            : TMir3_GUI_Ground_Info;  // Button Stone
      FCreateChar_Button_Warrior         : TMir3_GUI_Ground_Info;  // Button to Select Warrior Class
      FCreateChar_Button_Wizzard         : TMir3_GUI_Ground_Info;  // Button to Select Wizzard Class
      FCreateChar_Button_Taoist          : TMir3_GUI_Ground_Info;  // Button to Select Taoist Class
      FCreateChar_Button_Assassin        : TMir3_GUI_Ground_Info;  // Button to Select Assassin Class
      FCreateChar_Button_Ok              : TMir3_GUI_Ground_Info;  // Button to Create the Character
      FCreateChar_Button_Cancel          : TMir3_GUI_Ground_Info;  // Button to Cancel Character Creation
      FCreateChar_Edit_Char_Name         : TMir3_GUI_Ground_Info;  // Edit field for the Character Name
      FCreateChar_Information_Field      : TMir3_GUI_Ground_Info;  // View Class Info
    {$ENDREGION}
  end;

  TMir3_GUI_Defination_InGame  = record

    (* Load Game(Notice) Scene *)
    {$REGION ' - Load Game(Notice) Scene                       '}
    {$ENDREGION}
    
    (* InGame Scene *)
    {$REGION ' - InGame Scene All                              '}

    {$REGION ' - Bottom System               '}
    FInGame_UI_Bottom_Background              : TMir3_GUI_Ground_Info;  // Bottom UI Form
      // Rigth Button Menue
      FInGame_UI_Bottom_Button_1_Body         : TMir3_GUI_Ground_Info;  // Button to open/close Body Window
      FInGame_UI_Bottom_Button_2_Bag          : TMir3_GUI_Ground_Info;  // Button to open/close Bag Window
      FInGame_UI_Bottom_Button_3_Magic        : TMir3_GUI_Ground_Info;  // Button to open/close Magic Window
      FInGame_UI_Bottom_Button_4_Trade        : TMir3_GUI_Ground_Info;  // Button to open/close Trade Window
      FInGame_UI_Bottom_Button_5_Belt         : TMir3_GUI_Ground_Info;  // Button to open/close Belt Window
      FInGame_UI_Bottom_Button_6_MiniMap      : TMir3_GUI_Ground_Info;  // Button to open/close MiniMap View
      FInGame_UI_Bottom_Button_7_Quest        : TMir3_GUI_Ground_Info;  // Button to open/close Quest Window
      FInGame_UI_Bottom_Button_8_Setting      : TMir3_GUI_Ground_Info;  // Button to open/close Setting Window

      //Textbutton = SC DC MC BC Switch the Power types
      FInGame_UI_Bottom_Button_Power          : TMir3_GUI_Ground_Info;  // Button to switch DC/SC/MC/BC
      FInGame_UI_Bottom_Button_BA             : TMir3_GUI_Ground_Info;  // Button to switch BA/MA
      FInGame_UI_Bottom_TextField_Class       : TMir3_GUI_Ground_Info;  // View Used Class
      FInGame_UI_Bottom_TextField_Level       : TMir3_GUI_Ground_Info;  // View Used Level
      FInGame_UI_Bottom_TextField_FP          : TMir3_GUI_Ground_Info;  // View Used FaimePoints
      FInGame_UI_Bottom_TextField_Power       : TMir3_GUI_Ground_Info;  // View Used Class Power (DC/SC/MC/BC)
      FInGame_UI_Bottom_TextField_AC          : TMir3_GUI_Ground_Info;  // View Used AC
      FInGame_UI_Bottom_TextField_MA          : TMir3_GUI_Ground_Info;  // View Used MA or BA

      // HP / MP / Exp / BagW Gauge
      FInGame_UI_Bottom_Gauge_HP              : TMir3_GUI_Ground_Info;  // Show HP
      FInGame_UI_Bottom_Gauge_MP              : TMir3_GUI_Ground_Info;  // Show MP
      FInGame_UI_Bottom_Gauge_EXP             : TMir3_GUI_Ground_Info;  // Show Exp
      FInGame_UI_Bottom_Gauge_Bag_Size        : TMir3_GUI_Ground_Info;  // Show Bag Size
    {$ENDREGION}

    {$REGION ' - Avatar System               '}
    FInGame_UI_Bottom_Avatar_Background       : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Bottom_Panel_Avatar_Low      : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Bottom_Panel_Avatar_LowB     : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Bottom_Panel_Avatar_High     : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Bottom_Panel_Avatar_HighB    : TMir3_GUI_Ground_Info;  //
    {$ENDREGION}

    {$REGION ' - Belt Window System          '}
    { Horizontal }
    FInGame_UI_Belt_Background_H              : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Btn_Rotate_H            : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Btn_Close_H             : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_1          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_2          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_3          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_4          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_5          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_6          : TMir3_GUI_Ground_Info;  //
    { Vertical }
    FInGame_UI_Belt_Background_V              : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Btn_Rotate_V            : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Btn_Close_V             : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_1          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_2          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_3          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_4          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_5          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_6          : TMir3_GUI_Ground_Info;  //
    {$ENDREGION}

    {$REGION ' - Menue Bar System            '}
    (* Menue Bar System *)
    FInGame_UI_Menue_Bar_Background           : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Setting        : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Chat           : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Mail           : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Group          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Guild          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Avatar         : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Siege          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Exit           : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Features       : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Menue_Bar_Btn_Close          : TMir3_GUI_Ground_Info;  //
    {$ENDREGION}

    {$REGION ' - Game Setting System         '}
    (* Game Setting System *)
    FInGame_UI_GameSetting_Background         : TMir3_GUI_Ground_Info;  // Game Setting UI Form
      FInGame_UI_GameSetting_Btn_Close        : TMir3_GUI_Ground_Info;  // Window Clos Button (used for all 4 Pages)
      FInGame_UI_GameSetting_Btn_Basic        : TMir3_GUI_Ground_Info;  // Page 1 Basic Option
      FInGame_UI_GameSetting_Btn_Permit       : TMir3_GUI_Ground_Info;  // Page 2 Permit Option
      FInGame_UI_GameSetting_Btn_Chatting     : TMir3_GUI_Ground_Info;  // Page 3 Chatting Option
      FInGame_UI_GameSetting_Btn_Visual       : TMir3_GUI_Ground_Info;  // Page 4 Visual Option
      (* Page 1 *)
      FInGame_UI_GameSetting_Btn_1_P1         : TMir3_GUI_Ground_Info;  // Attack Mode
      FInGame_UI_GameSetting_TextField_1_P1   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_2_P1         : TMir3_GUI_Ground_Info;  // Forced Attack Mode
      FInGame_UI_GameSetting_TextField_2_P1   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_3_P1         : TMir3_GUI_Ground_Info;  // Background Music On/Off
      FInGame_UI_GameSetting_TextField_3_P1   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_4_P1         : TMir3_GUI_Ground_Info;  // Sound FX On/Off
      FInGame_UI_GameSetting_TextField_4_P1   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_5_P1         : TMir3_GUI_Ground_Info;  // Rigth <-> Left Sound (3D Sound)
      FInGame_UI_GameSetting_TextField_5_P1   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_6_P1         : TMir3_GUI_Ground_Info;  // Auto Pickup Item
      FInGame_UI_GameSetting_TextField_6_P1   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_7_P1         : TMir3_GUI_Ground_Info;  // Show Drop Item Name
      FInGame_UI_GameSetting_TextField_7_P1   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Volume_BGM       : TMir3_GUI_Ground_Info;  //
      FInGame_UI_GameSetting_Volume_SFX       : TMir3_GUI_Ground_Info;  //
      (* Page 2 *)
      FInGame_UI_GameSetting_Btn_1_P2         : TMir3_GUI_Ground_Info;  // Group Invitation Allowed
      FInGame_UI_GameSetting_TextField_1_P2   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_2_P2         : TMir3_GUI_Ground_Info;  // Guild Joining Allowed
      FInGame_UI_GameSetting_TextField_2_P2   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_3_P2         : TMir3_GUI_Ground_Info;  // Resurrection Allowed
      FInGame_UI_GameSetting_TextField_3_P2   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_4_P2         : TMir3_GUI_Ground_Info;  // Recall Allowed
      FInGame_UI_GameSetting_TextField_4_P2   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_5_P2         : TMir3_GUI_Ground_Info;  // Trading Allowed
      FInGame_UI_GameSetting_TextField_5_P2   : TMir3_GUI_Ground_Info;
      (* Page 3 *)
      FInGame_UI_GameSetting_Btn_1_P3         : TMir3_GUI_Ground_Info;  // Whispering Allowed
      FInGame_UI_GameSetting_TextField_1_P3   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_2_P3         : TMir3_GUI_Ground_Info;  // Shouting Allowed
      FInGame_UI_GameSetting_TextField_2_P3   : TMir3_GUI_Ground_Info;
      // Btn_3_P3 Not used atm Hold Pos for latter
      FInGame_UI_GameSetting_Btn_4_P3         : TMir3_GUI_Ground_Info;  // Guild Message Allowed
      FInGame_UI_GameSetting_TextField_4_P3   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_5_P3         : TMir3_GUI_Ground_Info;  // Lock Whispering from certain User
      FInGame_UI_GameSetting_TextField_5_P3   : TMir3_GUI_Ground_Info;
      (* Page 4 *)
      FInGame_UI_GameSetting_Btn_1_P4         : TMir3_GUI_Ground_Info;  // HP Change Display
      FInGame_UI_GameSetting_TextField_1_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_2_P4         : TMir3_GUI_Ground_Info;  // Magic Graphic Effect Display
      FInGame_UI_GameSetting_TextField_2_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_3_P4         : TMir3_GUI_Ground_Info;  // Bright Shadow
      FInGame_UI_GameSetting_TextField_3_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_4_P4         : TMir3_GUI_Ground_Info;  // Helmet Display
      FInGame_UI_GameSetting_TextField_4_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_5_P4         : TMir3_GUI_Ground_Info;  // Monster Effect Display
      FInGame_UI_GameSetting_TextField_5_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_6_P4         : TMir3_GUI_Ground_Info;  // Dyed Hair Display
      FInGame_UI_GameSetting_TextField_6_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_7_P4         : TMir3_GUI_Ground_Info;  // Display Avatar
      FInGame_UI_GameSetting_TextField_7_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_8_P4         : TMir3_GUI_Ground_Info;  // MiniMap Monster Display
      FInGame_UI_GameSetting_TextField_8_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_9_P4         : TMir3_GUI_Ground_Info;  // HP Gauge Display (Show HP Bar)
      FInGame_UI_GameSetting_TextField_9_P4   : TMir3_GUI_Ground_Info;
      FInGame_UI_GameSetting_Btn_10_P4        : TMir3_GUI_Ground_Info;  // Display Monster HP
      FInGame_UI_GameSetting_TextField_10_P4  : TMir3_GUI_Ground_Info;
      {$ENDREGION}

    {$REGION ' - Body Window UI System       '}
    FInGame_UI_Body_Window                    : TMir3_GUI_Ground_Info;  //
    FInGame_UI_Body_Btn_Close                 : TMir3_GUI_Ground_Info;  //
    {$ENDREGION}

    {$REGION ' - Body Show Window UI System  '}
    FInGame_UI_Body_Show_Window               : TMir3_GUI_Ground_Info;  //
    FInGame_UI_Body_Show_Btn_Close            : TMir3_GUI_Ground_Info;  //
    {$ENDREGION}

    {$REGION ' - Exit Window UI System       '}
    (* Game Setting System *)
    FInGame_UI_ExitWindow_Background          : TMir3_GUI_Ground_Info;  // Exit Window UI Form
      FInGame_UI_Exit_Text_Info               : TMir3_GUI_Ground_Info;  // Text Field
      FInGame_UI_Exit_Btn_Exit                : TMir3_GUI_Ground_Info;  // Exit Game
      FInGame_UI_Exit_Btn_Logout              : TMir3_GUI_Ground_Info;  // Logout and open Select Char scene
      FInGame_UI_Exit_Btn_Close               : TMir3_GUI_Ground_Info;  // Cancel / Close Window
    {$ENDREGION}

    {$ENDREGION}
  end;

  (* Defination *)
var
  ////////////////////////////////////////////////////////////////////////////////
  // Global System Controls (used by all Scenes)
  //..............................................................................
  FGame_GUI_Defination_System  : TMir3_GUI_Defination_System  =(

    {$REGION ' - System Info Controls   '}
    FSys_Dialog_Info                 : ({$REGION ' - FSys_Dialog_Info                 '}
                                     //gui_DragMode               : Boolean;              
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_DIALOG;
                                     gui_Type                   : ctForm;       
                                     gui_Form_Type              : ftMoving;
                                     gui_WorkField              : (Left:0; Top:0; Right:306; Bottom:226);
                                     gui_Top                    : 105;
                                     gui_Left                   : 246;
                                     gui_Height                 : 226;
                                     gui_Width                  : 308;
                                     gui_Blend_Size             : 245;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                   gui_Background_Texture_ID    : 420);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Modal_Event            : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSys_Dialog_Text                 : ({$REGION ' - FSys_Dialog_Text                 '}
                                     //gui_DragMode               : Boolean;              
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_PANEL;
                                     gui_Type                   : ctPanel;       
                                     gui_Form_Type              : ftNone;               
                                     gui_Top                    : 27;
                                     gui_Left                   : 22;
                                     gui_Height                 : 108;
                                     gui_Width                  : 263;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 16;
                                                                   gui_Font_Color       : $FFF2F2F2;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alCenter;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : [fsBold]);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;                                 
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSys_Dialog_Edit_Field           : ({$REGION ' - FSys_Dialog_Edit_Field           '}
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_EDIT_FIELD;
                                     gui_Type                   : ctEdit;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:2; Top:0; Right:262; Bottom:21);
                                     gui_Top                    : 177;
                                     gui_Left                   : 22;
                                     gui_Height                 : 21;
                                     gui_Width                  : 264;
                                     gui_Blend_Size             : 245;
                                     gui_Font                   : (gui_Font_Use_ID      : 3;
                                                                   gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_VAlign : avCenter);
                                     gui_Password_Char          : '';
                                     gui_Edit_Max_Length        : 25;
                                     gui_Edit_Using_ASCII       : [#8..#9, #13, #46, 'a'..'z','A'..'Z', '0'..'9'];
                                     gui_Color                  : (gui_ControlColor : $F5050505;
                                                                   gui_BorderColor  : $FF717171);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    FSys_Button_Ok                   : ({$REGION ' - FSys_Button_Ok                   '}
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_BUTTON_OK;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:80; Bottom:26);
                                     gui_Top                    : 145;
                                     gui_Left                   : 113;
                                     gui_Height                 : 26;
                                     gui_Width                  : 80;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                   gui_Background_Texture_ID    : 423;
                                                                   gui_Mouse_Over_Texture_ID    : 423;
                                                                   gui_Mouse_Down_Texture_ID    : 424);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;                                 
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FSys_Button_Yes                  : ({$REGION ' - FSys_Button_Yes                  '}
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_BUTTON_YES;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:80; Bottom:26);
                                     gui_Top                    : 145;
                                     gui_Left                   : 47;
                                     gui_Height                 : 26;
                                     gui_Width                  : 80;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                   gui_Background_Texture_ID    : 421;
                                                                   gui_Mouse_Over_Texture_ID    : 421;
                                                                   gui_Mouse_Down_Texture_ID    : 422);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;                                 
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FSys_Button_No                   : ({$REGION ' - FSys_Button_No                   '}
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_BUTTON_NO;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:80; Bottom:26);
                                     gui_Top                    : 145;
                                     gui_Left                   : 180;
                                     gui_Height                 : 26;
                                     gui_Width                  : 80;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                   gui_Background_Texture_ID    : 425;
                                                                   gui_Mouse_Over_Texture_ID    : 425;
                                                                   gui_Mouse_Down_Texture_ID    : 426);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;                                 
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FSys_Button_Free_Center          : ({$REGION ' - FSys_Button_Free_Center          '}
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_BUTTON_FREE_CENTER;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:80; Bottom:26);
                                     gui_Top                    : 145;
                                     gui_Left                   : 113;
                                     gui_Height                 : 26;
                                     gui_Width                  : 80;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                   gui_Background_Texture_ID    : 3611;
                                                                   gui_Mouse_Over_Texture_ID    : 3611;
                                                                   gui_Mouse_Down_Texture_ID    : 3612);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;                                 
                                     gui_Enabled                : True;
                                     gui_Visible                : False 
                                     {$ENDREGION}
              );
    FSys_Button_Free_Left            : ({$REGION ' - FSys_Button_Free_Left            '}
                                     gui_Unique_Control_Number  : GUI_ID_SYSINFO_BUTTON_FREE_LEFT;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:80; Bottom:26);
                                     gui_Top                    : 145;
                                     gui_Left                   : 47;
                                     gui_Height                 : 26;
                                     gui_Width                  : 80;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                   gui_Background_Texture_ID    : 3611;
                                                                   gui_Mouse_Over_Texture_ID    : 3611;
                                                                   gui_Mouse_Down_Texture_ID    : 3612);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;                                 
                                     gui_Enabled                : True;
                                     gui_Visible                : False 
                                     {$ENDREGION}
              );
    FSys_Button_Free_Right           : ({$REGION ' - FSys_Button_Free_Right           '}
                                   gui_Unique_Control_Number  : GUI_ID_SYSINFO_BUTTON_FREE_RIGHT;
                                   gui_Type                   : ctButton;
                                   gui_Form_Type              : ftNone;
                                   gui_WorkField              : (Left:0; Top:0; Right:80; Bottom:26);
                                   gui_Top                    : 145;
                                   gui_Left                   : 180;
                                   gui_Height                 : 26;
                                   gui_Width                  : 80;
                                   gui_Blend_Size             : 255;
                                   gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                 gui_Background_Texture_ID    : 3611;
                                                                 gui_Mouse_Over_Texture_ID    : 3611;
                                                                 gui_Mouse_Down_Texture_ID    : 3612);
                                   gui_Use_Animation_Texture  : False;
                                   gui_Use_Random_Texture     : False;
                                   gui_Use_Strech_Texture     : False; 
                                   gui_ShowBorder             : False;
                                   gui_ShowPanel              : False;                                 
                                   gui_Enabled                : True;
                                   gui_Visible                : False 
                                   {$ENDREGION}
              );                
    {$ENDREGION}

  );

  ////////////////////////////////////////////////////////////////////////////////
  // Game Login Control Defination
  //..............................................................................
  FGame_GUI_Defination_Login   : TMir3_GUI_Defination_Login   =(

    {$REGION ' - Login Scene            '}
    FLogin_Background                : ({$REGION ' - FLogin_Background                '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BACKGROUND;
                                     gui_Type                   : ctForm;       
                                     gui_Form_Type              : ftBackground;  
                                     gui_WorkField              : (Left:0; Top:0; Right:800; Bottom:600);
                                     gui_Top                    : 0;
                                     gui_Left                   : 0;
                                     gui_Height                 : 600;
                                     gui_Width                  : 800;
                                     gui_Blend_Size             : 245;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_PROGUSE_INT;
                                                                   gui_Background_Texture_ID    : 360;
                                                                   gui_Random_Texture_From      : 360;
                                                                   gui_Random_Texture_To        : 364);
                                     gui_Use_Random_Texture     : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FLogin_BackPanel_1               : ({$REGION ' - FLogin_BackPanel_1               '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BACKPANEL_1;
                                     gui_Type                   : ctPanel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 430;
                                     gui_Left                   : 0;
                                     gui_Height                 : 48;
                                     gui_Width                  : 800;
                                     gui_Strech_Rate_X          : 1.25;
                                     gui_Strech_Rate_Y          : 1.25;
                                     gui_Blend_Size             : 170;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 1);
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                    
                                     {$ENDREGION}
              );
    FLogin_BackPanel_2               : ({$REGION ' - FLogin_BackPanel_2               '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BACKPANEL_2;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 514;
                                     gui_Left                   : 116;
                                     gui_Height                 : 20;
                                     gui_Width                  : 800;
                                     gui_Blend_Size             : 255;
                                     gui_CaptionID              : 5;
                                     gui_Font                   : (gui_Font_Size        : 22;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False);
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FLogin_EditField_User            : ({$REGION ' - FLogin_EditField_User            '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_EDIT_USER;
                                     gui_Type                   : ctEdit;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:2; Top:0; Right:121; Bottom:23);
                                     gui_Top                    : 511;
                                     gui_Left                   : 145;
                                     gui_Height                 : 23;
                                     gui_Width                  : 126;
                                     gui_Blend_Size             : 245;
                                     gui_Font                   : (gui_Font_Use_ID      : 3;
                                                                   gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_VAlign : avCenter);
                                     gui_Password_Char          : '';
                                     gui_Edit_Max_Length        : 25;
                                     gui_Edit_Using_ASCII       : [#8..#9, #13, #46, 'a'..'z','A'..'Z', '0'..'9','_','-'];
                                     gui_Color                  : (gui_ControlColor : $F5050505;
                                                                   gui_BorderColor  : $FF717171);
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    FLogin_EditField_Password        : ({$REGION ' - FLogin_EditField_Password        '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_EDIT_PASSWORD; 
                                     gui_Type                   : ctEdit;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:2; Top:0; Right:121; Bottom:23);
                                     gui_Top                    : 511;
                                     gui_Left                   : 396;
                                     gui_Height                 : 23;
                                     gui_Width                  : 126;
                                     gui_Blend_Size             : 245;
                                     gui_Font                   : (gui_Font_Use_ID      : 3;
                                                                   gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alLeft;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : []);
                                     gui_Password_Char          : '*';
                                     gui_Edit_Max_Length        : 25;
                                     gui_Edit_Using_ASCII       : [#8..#9, #13, #46, 'a'..'z','A'..'Z', '0'..'9','_','-'];
                                     gui_Color                  : (gui_ControlColor : $F5050505;
                                                                   gui_BorderColor  : $FF717171);
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FLogin_Button_Exit               : ({$REGION ' - FLogin_Button_Exit               '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BUTTON_EXIT; 
                                     gui_Type                   : ctTextButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:28; Bottom:12);
                                     gui_Top                    : 445;
                                     gui_Left                   : 565;
                                     gui_Height                 : 12;
                                     gui_Width                  : 28;
                                     gui_Blend_Size             : 255;
                                     gui_CaptionID              : 2;
                                     gui_HintID                 : 7;
                                     gui_Font                   : (gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alLeft;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : [fsBold]);
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FLogin_Button_Login              : ({$REGION ' - FLogin_Button_Login              '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BUTTON_LOGIN;
                                     gui_Type                   : ctTextButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:45; Bottom:13);
                                     gui_Top                    : 515;
                                     gui_Left                   : 565;
                                     gui_Height                 : 12;
                                     gui_Width                  : 44;
                                     gui_Blend_Size             : 255;
                                     gui_CaptionID              : 1;
                                     gui_HintID                 : 6;
                                     gui_Font                   : (gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alLeft;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : [fsBold]);
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FLogin_Button_URL_1              : ({$REGION ' - FLogin_Button_URL_1              '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BUTTON_URL_1;
                                     gui_Type                   : ctTextButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:111; Bottom:13);
                                     gui_Top                    : 445;
                                     gui_Left                   : 160;
                                     gui_Height                 : 12;   
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_CaptionID              : 3;
                                     gui_HintID                 : 8;
                                     gui_Font                   : (gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alLeft;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : [fsBold]);
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FLogin_Button_URL_2              : ({$REGION ' - FLogin_Button_URL_2              '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BUTTON_URL_1;
                                     gui_Type                   : ctTextButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:140; Bottom:13);
                                     gui_Top                    : 445;
                                     gui_Left                   : 350;
                                     gui_Height                 : 12;
                                     gui_Width                  : 132;
                                     gui_Blend_Size             : 255;
                                     gui_CaptionID              : 4;
                                     gui_HintID                 : 9;
                                     gui_Font                   : (gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alLeft;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : [fsBold]);
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FLogin_Information_Field         : ({$REGION ' - FLogin_Information_Field         '}
                                     gui_Unique_Control_Number  : GUI_ID_LOGIN_BUTTON_INFO;
                                     gui_Type                   : ctPanel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 100;
                                     gui_Left                   : 40;
                                     gui_Height                 : 300;
                                     gui_Width                  : 380;
                                     gui_Blend_Size             : 205;
                                     gui_Font                   : (gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFF2F2F2;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alCenter;
                                                                   gui_Font_Text_VAlign : avTop;
                                                                   gui_Font_Setting     : [fsBold]);
                                     gui_Color                  : (gui_ControlColor : $8F131313;
                                                                   gui_BorderColor  : $9F030303);
                                     gui_Scroll_Text            : True;
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    {$ENDREGION}

  );

  ////////////////////////////////////////////////////////////////////////////////
  // Game Select Character and Create Character Control Defination
  //..............................................................................
  FGame_GUI_Defination_SelChar : TMir3_GUI_Defination_SelChar =(

    {$REGION ' - SelectChar Scene       '}
    FSelectChar_Background           : ({$REGION ' - FSelectChar_Background           '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_BACKGROUND;
                                     gui_Type                   : ctForm;       
                                     gui_Form_Type              : ftBackground;  
                                     gui_WorkField              : (Left:0; Top:0; Right:800; Bottom:600);
                                     gui_Top                    : 0;
                                     gui_Left                   : 0;
                                     gui_Height                 : 600;
                                     gui_Width                  : 800;
                                     gui_Strech_Rate_X          : 1.25;
                                     gui_Strech_Rate_Y          : 1.25;                                   
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 50);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : True; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    FSelectChar_Character_1          : ({$REGION ' - FSelectChar_Character_1          '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_CHARACTER_1;
                                     gui_Type                   : ctSelectChar;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:100; Bottom:200);
                                     gui_Top                    : 240;
                                     gui_Left                   : 300;
                                     gui_Height                 : 200;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 200);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False 
                                     {$ENDREGION}
              );
    FSelectChar_Character_2          : ({$REGION ' - FSelectChar_Character_2          '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_CHARACTER_2;
                                     gui_Type                   : ctSelectChar;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:100; Bottom:200);
                                     gui_Top                    : 380;
                                     gui_Left                   : 380;
                                     gui_Height                 : 200;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 200);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False 
                                     {$ENDREGION}
              );
    FSelectChar_Character_3          : ({$REGION ' - FSelectChar_Character_3          '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_CHARACTER_3;
                                     gui_Type                   : ctSelectChar;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:100; Bottom:200);
                                     gui_Top                    : 240;
                                     gui_Left                   : 500;
                                     gui_Height                 : 200;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 200);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False 
                                     {$ENDREGION}
              );
    FSelectChar_Button_Start         : ({$REGION ' - FSelectChar_Button_Start         '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_BUTTON_START;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:92; Bottom:16);
                                     gui_Top                    : 89;
                                     gui_Left                   : 330;
                                     gui_Height                 : 16;
                                     gui_Width                  : 92;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 55;
                                                                   gui_Mouse_Over_Texture_ID    : 56;
                                                                   gui_Mouse_Down_Texture_ID    : 55);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                    
                                     {$ENDREGION}
              );
    FSelectChar_Button_Exit          : ({$REGION ' - FSelectChar_Button_Exit          '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_BUTTON_EXIT;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:40; Bottom:18);
                                     gui_Top                    : 476;
                                     gui_Left                   : 37;
                                     gui_Height                 : 18;
                                     gui_Width                  : 40;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 57;
                                                                   gui_Mouse_Over_Texture_ID    : 58;
                                                                   gui_Mouse_Down_Texture_ID    : 57);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                     
                                     {$ENDREGION}
              );
    FSelectChar_Button_Delete_Char   : ({$REGION ' - FSelectChar_Button_Delete_Char   '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_BUTTON_DELETE_CHAR;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:100; Bottom:14);
                                     gui_Top                    : 282;
                                     gui_Left                   : 105;
                                     gui_Height                 : 14;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 53;
                                                                   gui_Mouse_Over_Texture_ID    : 54;
                                                                   gui_Mouse_Down_Texture_ID    : 53);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True      
                                     {$ENDREGION}
              );
    FSelectChar_Button_New_Char      : ({$REGION ' - FSelectChar_Button_New_Char      '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_BUTTON_NEW_CHAR;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:104; Bottom:14);
                                     gui_Top                    : 135;
                                     gui_Left                   : 553;
                                     gui_Height                 : 14;
                                     gui_Width                  : 104;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 51;
                                                                   gui_Mouse_Over_Texture_ID    : 52;
                                                                   gui_Mouse_Down_Texture_ID    : 51);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True 
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Text          : ({$REGION ' - FSelectChar_Dialog_Text          '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_PANEL;
                                     gui_Type                   : ctPanel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 110;
                                     gui_Left                   : 105;
                                     gui_Height                 : 120;
                                     gui_Width                  : 190;
                                     gui_Blend_Size             : 240;
                                     gui_Font                   : ( gui_Font_Size        : 20;
                                                                    gui_Font_Color       : $FFB5D5BD;
                                                                    gui_Font_Use_Kerning : False;);
                                     gui_Color                  : (gui_ControlColor : $7F313A19;
                                                                   gui_BorderColor  : $FF717171);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Name          : ({$REGION ' - FSelectChar_Dialog_Name          '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_NAME;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 120;
                                     gui_Left                   : 105;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFFF8100;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True  
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Level         : ({$REGION ' - FSelectChar_Dialog_Level         '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_LEVEL;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 140;
                                     gui_Left                   : 105;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFBF7830;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Class         : ({$REGION ' - FSelectChar_Dialog_Class         '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_CLASS;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 160;
                                     gui_Left                   : 105;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFFFA040;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Gold          : ({$REGION ' - FSelectChar_Dialog_Gold          '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_GOLD;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 180;
                                     gui_Left                   : 105;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : ( gui_Font_Size        : 20;
                                                                    gui_Font_Color       : $FFFFBA73;
                                                                    gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Exp           : ({$REGION ' - FSelectChar_Dialog_Exp           '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_EXP;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 200;
                                     gui_Left                   : 105;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : ( gui_Font_Size        : 20;
                                                                    gui_Font_Color       : $FFFFBA73;
                                                                    gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );            
    FSelectChar_Dialog_Name_Info     : ({$REGION ' - FSelectChar_Dialog_Name_Info     '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_NAME_INFO;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 120;
                                     gui_Left                   : 165;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFFF8100;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Level_Info    : ({$REGION ' - FSelectChar_Dialog_Level_Info    '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_LEVEL_INFO;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 140;
                                     gui_Left                   : 165;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFBF7830;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Class_Info    : ({$REGION ' - FSelectChar_Dialog_Class_Info    '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_CLASS_INFO;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 160;
                                     gui_Left                   : 165;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFFFA040;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Gold_Info     : ({$REGION ' - FSelectChar_Dialog_Level_Info    '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_GOLD_INFO;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 180;
                                     gui_Left                   : 165;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFFFBA73;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FSelectChar_Dialog_Exp_Info      : ({$REGION ' - FSelectChar_Dialog_Exp_Info      '}
                                     gui_Unique_Control_Number  : GUI_ID_SELECTCHAR_INFO_EXP_INFO;
                                     gui_Type                   : ctTextLabel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 200;
                                     gui_Left                   : 165;
                                     gui_Height                 : 20;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Font                   : (gui_Font_Size        : 20;
                                                                   gui_Font_Color       : $FFFFBA73;
                                                                   gui_Font_Use_Kerning : False;);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );                            
    {$ENDREGION}

    {$REGION ' - CreateChar Scene       '}
    FCreateChar_Background           : ({$REGION ' - FCreateChar_Background           '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_BACKGROUND;
                                     gui_Type                   : ctForm;       
                                     gui_Form_Type              : ftBackground;
                                     gui_WorkField              : (Left:0; Top:0; Right:800; Bottom:600);
                                     gui_Top                    : 0;
                                     gui_Left                   : 0;
                                     gui_Height                 : 600;
                                     gui_Width                  : 800;
                                     gui_Strech_Rate_X          : 1.25;
                                     gui_Strech_Rate_Y          : 1.25;                                   
                                     gui_Blend_Size             : 255;                       
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 80);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : True; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    FCreateChar_Character_Male       : ({$REGION ' - FCreateChar_Character_Male       '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_CHARACTER_MALE;
                                     gui_Type                   : ctSelectChar;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:100; Bottom:260);
                                     gui_Top                    : 205;
                                     gui_Left                   : 185;
                                     gui_Height                 : 260;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 440);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : True; 
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False                                      
                                     {$ENDREGION}
              );
    FCreateChar_Character_Female     : ({$REGION ' - FCreateChar_Character_Female     '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_CHARACTER_FEMALE;
                                     gui_Type                   : ctSelectChar;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:100; Bottom:240);
                                     gui_Top                    : 260;
                                     gui_Left                   : 540;
                                     gui_Height                 : 240;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 740);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : True;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False
                                     {$ENDREGION}
              );
    FCreateChar_Panel_Stone_Shadow   : ({$REGION ' - FCreateChar_Panel_Stone_Shadow   '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_PANEL_STONE_SHADOW;
                                     gui_Type                   : ctPanel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 557;
                                     gui_Left                   : 264;
                                     gui_Height                 : 32;
                                     gui_Width                  : 256;
                                     gui_Blend_Size             : 155;
                                     gui_Blend_Mode             : 111;//Blend_DestBright
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 82);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FCreateChar_Panel_Stone          : ({$REGION ' - FCreateChar_Panel_Stone          '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_PANEL_STONE;
                                     gui_Type                   : ctPanel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 507;
                                     gui_Left                   : 321;
                                     gui_Height                 : 84;
                                     gui_Width                  : 164;
                                     gui_Blend_Size             : 255;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 81);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : True
                                     {$ENDREGION}
              );
    FCreateChar_Button_Warrior       : ({$REGION ' - FCreateChar_Button_Warrior       '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_BUTTON_WARRIOR;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:34);
                                     gui_Top                    : 543;
                                     gui_Left                   : 333;
                                     gui_Height                 : 34;
                                     gui_Width                  : 36;
                                     gui_Blend_Size             : 255;
                                     gui_HintID                 : 42;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 91;
                                                                   gui_Mouse_Over_Texture_ID    : 92;
                                                                   gui_Mouse_Down_Texture_ID    : 93);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False
                                     {$ENDREGION}
              );
    FCreateChar_Button_Wizzard       : ({$REGION ' - FCreateChar_Button_Wizzard       '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_BUTTON_WIZZARD;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:34);
                                     gui_Top                    : 543;
                                     gui_Left                   : 369;
                                     gui_Height                 : 34;
                                     gui_Width                  : 36;
                                     gui_Blend_Size             : 255;
                                     gui_HintID                 : 43;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 94;
                                                                   gui_Mouse_Over_Texture_ID    : 95;
                                                                   gui_Mouse_Down_Texture_ID    : 96);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False
                                     {$ENDREGION}
              );
    FCreateChar_Button_Taoist        : ({$REGION ' - FCreateChar_Button_Taoist        '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_BUTTON_TAOIST;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:34);
                                     gui_Top                    : 543;
                                     gui_Left                   : 406;
                                     gui_Height                 : 34;
                                     gui_Width                  : 36;
                                     gui_Blend_Size             : 255;
                                     gui_HintID                 : 44;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 97;
                                                                   gui_Mouse_Over_Texture_ID    : 98;
                                                                   gui_Mouse_Down_Texture_ID    : 99);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False
                                     {$ENDREGION}
              );
    FCreateChar_Button_Assassin      : ({$REGION ' - FCreateChar_Button_Assassin      '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_BUTTON_ASSASSIN;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:34);
                                     gui_Top                    : 543;
                                     gui_Left                   : 442;
                                     gui_Height                 : 34;
                                     gui_Width                  : 36;
                                     gui_Blend_Size             : 255;
                                     gui_HintID                 : 45;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 100;
                                                                   gui_Mouse_Over_Texture_ID    : 101;
                                                                   gui_Mouse_Down_Texture_ID    : 102);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False
                                     {$ENDREGION}
              );
    FCreateChar_Button_Ok            : ({$REGION ' - FCreateChar_Button_Ok            '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_BUTTON_OK;
                                     gui_Type                   : ctButton;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:28; Bottom:28);
                                     gui_Top                    : 557;
                                     gui_Left                   : 563;
                                     gui_Height                 : 28;
                                     gui_Width                  : 28;
                                     gui_Blend_Size             : 255;
                                     gui_HintID                 : 46;
                                     gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                   gui_Background_Texture_ID    : 85;
                                                                   gui_Mouse_Over_Texture_ID    : 86;
                                                                   gui_Mouse_Down_Texture_ID    : 87);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : False;
                                     gui_ShowPanel              : False;
                                     gui_Enabled                : True;
                                     gui_Visible                : False
                                     {$ENDREGION}
              );
    FCreateChar_Button_Cancel        : ({$REGION ' - FCreateChar_Button_Cancel        '}
                                   gui_Unique_Control_Number  : GUI_ID_CREATECHAR_BUTTON_CANCEL;
                                   gui_Type                   : ctButton;
                                   gui_Form_Type              : ftNone;
                                   gui_WorkField              : (Left:0; Top:0; Right:28; Bottom:28);
                                   gui_Top                    : 557;
                                   gui_Left                   : 603;
                                   gui_Height                 : 28;
                                   gui_Width                  : 28;
                                   gui_Blend_Size             : 255;
                                   gui_HintID                 : 47;
                                   gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_INTERFACE1C_INT;
                                                                 gui_Background_Texture_ID    : 88;
                                                                 gui_Mouse_Over_Texture_ID    : 89;
                                                                 gui_Mouse_Down_Texture_ID    : 90);
                                   gui_Use_Animation_Texture  : False;
                                   gui_Use_Random_Texture     : False;
                                   gui_Use_Strech_Texture     : False;
                                   gui_ShowBorder             : False;
                                   gui_ShowPanel              : False;
                                   gui_Enabled                : True;
                                   gui_Visible                : False
                                   {$ENDREGION}
              );
    FCreateChar_Edit_Char_Name       : ({$REGION ' - FCreateChar_Edit_Char_Name       '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_EDIT_CHAR_NAME;
                                     gui_Type                   : ctEdit;
                                     gui_Form_Type              : ftNone;
                                     gui_WorkField              : (Left:0; Top:0; Right:100; Bottom:16);
                                     gui_Top                    : 524;
                                     gui_Left                   : 355;
                                     gui_Height                 : 16;
                                     gui_Width                  : 100;
                                     gui_Blend_Size             : 240;
                                     gui_Font                   : (gui_Font_Use_ID      : 1;
                                                                   gui_Font_Size        : 16;
                                                                   gui_Font_Color       : $FFF0F0F0;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_VAlign : avCenter);
                                     gui_Password_Char          : '';
                                     gui_Edit_Max_Length        : 15;
                                     gui_Edit_Using_ASCII       : [#8..#9, #13, #46, 'a'..'z','A'..'Z', '0'..'9'];
                                     gui_Color                  : (gui_ControlColor : $FF312C27;
                                                                   gui_BorderColor  : $FF946D45);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False; 
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    FCreateChar_Information_Field    : ({$REGION ' - FCreateChar_Information_Field    '}
                                     gui_Unique_Control_Number  : GUI_ID_CREATECHAR_INFO;
                                     gui_Type                   : ctPanel;
                                     gui_Form_Type              : ftNone;
                                     gui_Top                    : 30;
                                     gui_Left                   : 80;
                                     gui_Height                 : 220;
                                     gui_Width                  : 640;
                                     gui_Blend_Size             : 205;
                                     gui_CaptionID              : 61;
                                     gui_Font                   : (gui_Font_Size        : 21;
                                                                   gui_Font_Color       : $FFD1AD69;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alCenter;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : [fsBold]);
                                     gui_Color                  : (gui_ControlColor : $8F131313;
                                                                   gui_BorderColor  : $9F030303);
                                     gui_Use_Animation_Texture  : False;
                                     gui_Use_Random_Texture     : False;
                                     gui_Use_Strech_Texture     : False;
                                     gui_ShowBorder             : True;
                                     gui_ShowPanel              : True;
                                     gui_Enabled                : True;
                                     gui_Visible                : True                                   
                                     {$ENDREGION}
              );
    {$ENDREGION}

  );

  ////////////////////////////////////////////////////////////////////////////////
  // Game InGame Control Defination
  //..............................................................................
  FGame_GUI_Defination_InGame  : TMir3_GUI_Defination_InGame  =(

    {$REGION ' - Notice Scene           '}
    //Background Image
    //Load Animation
    {$ENDREGION}

    {$REGION ' - InGame Scene           '}

      {$REGION ' - Bottom UI System                '}
      FInGame_UI_Bottom_Background        : ({$REGION ' - FInGame_UI_Bottom_Background    '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BACKGROUND;
                                          gui_Type                   : ctForm;
                                          gui_Form_Type              : ftUIStatic;
                                          gui_WorkField              : (Left:0; Top:0; Right:708; Bottom:56);
                                          gui_Top                    : 545;
                                          gui_Left                   : 94;
                                          gui_Height                 : 56;
                                          gui_Width                  : 708;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Background_Texture_ID    : 50);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Bottom_Button_1_Body     : ({$REGION ' - FInGame_UI_Bottom_Button_1_Body  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_1_BODY;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 430;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 80;
                                                                        gui_Mouse_Down_Texture_ID    : 81);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Bottom_Button_2_Bag      : ({$REGION ' - FInGame_UI_Bottom_Button_2_Bag   '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_2_BAG;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 464;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 82;
                                                                        gui_Mouse_Down_Texture_ID    : 83);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Bottom_Button_3_Magic    : ({$REGION ' - FInGame_UI_Bottom_Button_3_Magic '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_3_MAGIC;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 498;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 84;
                                                                        gui_Mouse_Down_Texture_ID    : 85);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Bottom_Button_4_Trade    : ({$REGION ' - FInGame_UI_Bottom_Button_4_Trade '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_4_TRADE;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 532;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 94;
                                                                        gui_Mouse_Down_Texture_ID    : 95);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Bottom_Button_5_Belt     : ({$REGION ' - FInGame_UI_Bottom_Button_5_Belt  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_5_BELT;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 566;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 86;
                                                                        gui_Mouse_Down_Texture_ID    : 87);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Bottom_Button_6_MiniMap  : ({$REGION ' - FInGame_UI_Bottom_Button_6_MiniMap  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_6_MINIMAP;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 600;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 88;
                                                                        gui_Mouse_Down_Texture_ID    : 89);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );              
      FInGame_UI_Bottom_Button_7_Quest    : ({$REGION ' - FInGame_UI_Bottom_Button_7_Quest  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_7_QUEST;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 634;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 90;
                                                                        gui_Mouse_Down_Texture_ID    : 91);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );      
      FInGame_UI_Bottom_Button_8_Setting  : ({$REGION ' - FInGame_UI_Bottom_Button_8_Setting  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_BUTTON_8_SETTING;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 16;
                                          gui_Left                   : 668;
                                          gui_Height                 : 28;
                                          gui_Width                  : 28;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 92;
                                                                        gui_Mouse_Down_Texture_ID    : 93);
                                          gui_Use_Animation_Texture  : False;
                                          gui_Use_Random_Texture     : False;
                                          gui_Use_Strech_Texture     : False;
                                          gui_ShowBorder             : False;
                                          gui_ShowPanel              : False;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );

      // TODO : Hint ID for the Buttons etc. gui_Hint_ID = ID from Language File
      //BC SC DC MC : 281x34  <-- Tag := 1,2,3,4,5 und in Event Function Testen und setzen...


      FInGame_UI_Bottom_TextField_Class     : ({$REGION ' - FInGame_UI_Bottom_TextField_Class  '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_CLASS;
                                            gui_Type                   : ctTextLabel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 16;
                                            gui_Left                   : 233;
                                            gui_Height                 : 16;
                                            gui_Width                  : 45;
                                            gui_Blend_Size             : 255;
                                            gui_CaptionID              : 60;                                        
                                            gui_Font                   : (gui_Font_Size        : 16;
                                                                          gui_Font_Color       : $FFF3F3F3;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);
                                            gui_Use_Animation_Texture  : False;
                                            gui_Use_Random_Texture     : False;
                                            gui_Use_Strech_Texture     : False;
                                            gui_ShowBorder             : True;
                                            gui_ShowPanel              : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_TextField_Level     : ({$REGION ' - FInGame_UI_Bottom_TextField_Level  '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_LEVEL;
                                            gui_Type                   : ctTextLabel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 33;
                                            gui_Left                   : 233;
                                            gui_Height                 : 16;
                                            gui_Width                  : 45;
                                            gui_Blend_Size             : 255;
                                            gui_CaptionID              : 39;
                                            gui_Font                   : (gui_Font_Size        : 16;
                                                                          gui_Font_Color       : $FFF3F3F3;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);
                                            gui_Use_Animation_Texture  : False;
                                            gui_Use_Random_Texture     : False;
                                            gui_Use_Strech_Texture     : False;
                                            gui_ShowBorder             : True;
                                            gui_ShowPanel              : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_TextField_FP        : ({$REGION ' - FInGame_UI_Bottom_TextField_FP     '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_FAIME;
                                            gui_Type                   : ctTextLabel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 16;
                                            gui_Left                   : 301;
                                            gui_Height                 : 16;
                                            gui_Width                  : 45;
                                            gui_Blend_Size             : 255;
                                            gui_CaptionID              : 40;
                                            gui_Font                   : (gui_Font_Size        : 16;
                                                                          gui_Font_Color       : $FFF3F3F3;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);
                                            gui_Use_Animation_Texture  : False;
                                            gui_Use_Random_Texture     : False;
                                            gui_Use_Strech_Texture     : False;
                                            gui_ShowBorder             : True;
                                            gui_ShowPanel              : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_TextField_Power     : ({$REGION ' - FInGame_UI_Bottom_TextField_Power  '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_POWER;
                                            gui_Type                   : ctTextLabel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 33;
                                            gui_Left                   : 301;
                                            gui_Height                 : 16;
                                            gui_Width                  : 45;
                                            gui_Blend_Size             : 255;
                                            gui_CaptionID              : 38;
                                            gui_Font                   : (gui_Font_Size        : 15;
                                                                          gui_Font_Color       : $FFF3F3F3;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);
                                            gui_Use_Animation_Texture  : False;
                                            gui_Use_Random_Texture     : False;
                                            gui_Use_Strech_Texture     : False;
                                            gui_ShowBorder             : True;
                                            gui_ShowPanel              : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_TextField_AC        : ({$REGION ' - FInGame_UI_Bottom_TextField_AC     '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_AC;
                                            gui_Type                   : ctTextLabel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 16;
                                            gui_Left                   : 368;
                                            gui_Height                 : 16;
                                            gui_Width                  : 45;
                                            gui_Blend_Size             : 255;
                                            gui_CaptionID              : 38;
                                            gui_Font                   : (gui_Font_Size        : 15;
                                                                          gui_Font_Color       : $FFF3F3F3;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);
                                            gui_Use_Animation_Texture  : False;
                                            gui_Use_Random_Texture     : False;
                                            gui_Use_Strech_Texture     : False;
                                            gui_ShowBorder             : True;
                                            gui_ShowPanel              : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_TextField_MA        : ({$REGION ' - FInGame_UI_Bottom_TextField_MA     '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_TEXT_FIELD_MA;
                                            gui_Type                   : ctTextLabel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 33;
                                            gui_Left                   : 368;
                                            gui_Height                 : 16;
                                            gui_Width                  : 45;
                                            gui_Blend_Size             : 255;
                                            gui_CaptionID              : 38;
                                            gui_Font                   : (gui_Font_Size        : 15;
                                                                          gui_Font_Color       : $FFF3F3F3;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);
                                            gui_Use_Animation_Texture  : False;
                                            gui_Use_Random_Texture     : False;
                                            gui_Use_Strech_Texture     : False;
                                            gui_ShowBorder             : True;
                                            gui_ShowPanel              : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );


      FInGame_UI_Bottom_Gauge_HP            : ({$REGION ' - FInGame_UI_Bottom_Gauge_HP          '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_GAUGE_HP;
                                            gui_Type                   : ctProgress;
                                            gui_Form_Type              : ftNone;
                                            gui_WorkField              : (Left: 0; Top:0; Right: 180; Bottom: 12);
                                            gui_Top                    : 17;
                                            gui_Left                   : 17;
                                            gui_Height                 : 12;
                                            gui_Width                  : 180;
                                            gui_Blend_Size             : 255;
                                            gui_Font                   : (gui_Font_Size        : 16;
                                                                          gui_Font_Color       : $FFFFFFFF;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);
                                            gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID    : 52);
                                            gui_Progress_Setup         : (gui_Min   : 0;
                                                                          gui_Max   : 100;
                                                                          gui_Value : 90;
                                                                          gui_ShowText : True);
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_Gauge_MP            : ({$REGION ' - FInGame_UI_Bottom_Gauge_MP          '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_GAUGE_MP;
                                            gui_Type                   : ctProgress;
                                            gui_Form_Type              : ftNone;
                                            gui_WorkField              : (Left: 0; Top:0; Right: 180; Bottom: 12);
                                            gui_Top                    : 33;
                                            gui_Left                   : 17;
                                            gui_Height                 : 12;
                                            gui_Width                  : 180;
                                            gui_Blend_Size             : 255;
                                            gui_Font                   : (gui_Font_Size        : 16;
                                                                          gui_Font_Color       : $FFFFFFFF;
                                                                          gui_Font_Text_HAlign : alCenter;
                                                                          gui_Font_Text_VAlign : avCenter);                                            
                                            gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID    : 54);
                                            gui_Progress_Setup         : (gui_Min   : 0;
                                                                          gui_Max   : 100;
                                                                          gui_Value : 75;
                                                                          gui_ShowText : True);
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_Gauge_EXP           : ({$REGION ' - FInGame_UI_Bottom_Gauge_EXP         '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_GAUGE_EXP;
                                            gui_Type                   : ctProgress;
                                            gui_Form_Type              : ftNone;
                                            gui_WorkField              : (Left: 0; Top:0; Right: 68; Bottom: 4);
                                            gui_Top                    : 5;
                                            gui_Left                   : 2;
                                            gui_Height                 : 4;
                                            gui_Width                  : 700; // used full length to have Hint Support on all 10 fields
                                            gui_Blend_Size             : 255;
                                            gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID    : 56);
                                            gui_Progress_Setup         : (gui_Min   : 0;
                                                                          gui_Max   : 100;
                                                                          gui_Value : 36;
                                                                          gui_Progress_Type: ptSpecial);
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_Gauge_Bag_Size      : ({$REGION ' - FInGame_UI_Bottom_Gauge_Bag_Size    '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_GAUGE_BAG_SIZE;
                                            gui_Type                   : ctProgress;
                                            gui_Form_Type              : ftNone;
                                            gui_WorkField              : (Left: 0; Top:0; Right: 4; Bottom: 30);
                                            gui_Top                    : 16;
                                            gui_Left                   : 7;
                                            gui_Height                 : 30;
                                            gui_Width                  : 4;
                                            gui_Blend_Size             : 255;
                                            gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID    : 60);
                                            gui_Progress_Setup         : (gui_Min   : 0;
                                                                          gui_Max   : 100;
                                                                          gui_Value : 75;
                                                                          gui_Progress_Type: ptVertical);
                                            gui_ShowHint               : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : False
                                            {$ENDREGION}
                );

      FInGame_UI_Bottom_Avatar_Background   : ({$REGION ' - FInGame_UI_Bottom_Avatar_Background    '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_AVATAR_BACKGROUND;
                                            gui_Type                   : ctForm;
                                            gui_Form_Type              : ftUIStatic;
                                            gui_WorkField              : (Left:0; Top:0; Right:96; Bottom:86);
                                            gui_Top                    : 458;
                                            gui_Left                   : 0;
                                            gui_Height                 : 144;
                                            gui_Width                  : 96;
                                            gui_Blend_Size             : 255;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_Panel_Avatar_Low    : ({$REGION ' - FInGame_UI_Bottom_Panel_Avatar_Low   '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_AVATAR_LOW_PANEL;
                                            gui_Type                   : ctPanel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 57;
                                            gui_Left                   : 0;
                                            gui_Height                 : 86;
                                            gui_Width                  : 96;
                                            gui_Blend_Size             : 255;
                                            gui_Control_Texture        : (gui_Texture_File_ID           : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID     : 68);
                                            gui_Use_Animation_Texture  : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_Panel_Avatar_LowB   : ({$REGION ' - FInGame_UI_Bottom_Panel_Avatar_LowB  '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_AVATAR_LOW_PANEL_BACK;
                                            gui_Type                   : ctPanel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 100;
                                            gui_Left                   : 6;
                                            gui_Height                 : 108;
                                            gui_Width                  : 263;
                                            gui_Blend_Size             : 255;
                                            gui_Control_Texture        : (gui_Texture_File_ID           : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID     : 71);
                                            gui_Animation              : (gui_Animation_Texture_File_ID : GAME_TEXTURE_PROGUSE_INT;
                                                                          gui_Animation_Texture_From    : 320;
                                                                          gui_Animation_Texture_To      : 329;
                                                                          gui_Animation_Interval        : 200;
                                                                          gui_Animation_Offset_X        : 2;
                                                                          gui_Animation_Offset_Y        : 2
                                                                         );
                                            gui_Use_Animation_Texture  : True;    
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
              );
      FInGame_UI_Bottom_Panel_Avatar_High   : ({$REGION ' - FInGame_UI_Bottom_Panel_Avatar_High   '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_AVATAR_HIGH_PANEL;
                                            gui_Type                   : ctPanel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 0;
                                            gui_Left                   : 0;
                                            gui_Height                 : 144;
                                            gui_Width                  : 104;
                                            gui_Blend_Size             : 255;
                                            gui_Control_Texture        : (gui_Texture_File_ID           : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID     : 67);
                                            gui_Use_Animation_Texture  : True;
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
                );
      FInGame_UI_Bottom_Panel_Avatar_HighB  : ({$REGION ' - FInGame_UI_Bottom_Panel_Avatar_HighB  '}
                                            gui_Unique_Control_Number  : GUI_ID_INGAME_BOTTOM_UI_AVATAR_HIGH_PANEL_BACK;
                                            gui_Type                   : ctPanel;
                                            gui_Form_Type              : ftNone;
                                            gui_Top                    : 42;
                                            gui_Left                   : 6;
                                            gui_Height                 : 108;
                                            gui_Width                  : 263;
                                            gui_Blend_Size             : 255;
                                            gui_Control_Texture        : (gui_Texture_File_ID           : GAME_TEXTURE_GAMEINTER_INT;
                                                                          gui_Background_Texture_ID     : 70);
                                            gui_Animation              : (gui_Animation_Texture_File_ID : GAME_TEXTURE_PROGUSE_INT;
                                                                          gui_Animation_Texture_From    : 650;
                                                                          gui_Animation_Texture_To      : 657;
                                                                          gui_Animation_Interval        : 1000;
                                                                          gui_Animation_Offset_X        : 0;
                                                                          gui_Animation_Offset_Y        : 0
                                                                         );
                                            gui_Use_Animation_Texture  : True;    
                                            gui_Enabled                : True;
                                            gui_Visible                : True
                                            {$ENDREGION}
              );

      {$ENDREGION}

      {$REGION ' - Belt UI System                  '}
    { Horizontal Belt Info }
      FInGame_UI_Belt_Background_H        : ({$REGION ' - FInGame_UI_Belt_Background_H     '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_BACKGROUND;
                                          gui_Type                   : ctForm;
                                          gui_Form_Type              : ftMoving;
                                          gui_WorkField              : (Left:118; Top:8; Right:272; Bottom:50);
                                          gui_Top                    : 480;
                                          gui_Left                   : 144;
                                          gui_Height                 : 64;
                                          gui_Width                  : 512;
                                          gui_Blend_Size             : 250;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Background_Texture_ID    : 320);
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Btn_Rotate_H        : ({$REGION ' - FInGame_UI_Belt_Btn_Rotate_H     '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_BTN_ROTATE;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 36;
                                          gui_Left                   : 122;
                                          gui_Height                 : 14;
                                          gui_Width                  : 16;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 323);
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Btn_Close_H         : ({$REGION ' - FInGame_UI_Belt_Btn_Close_H      '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_BTN_CLOSE;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 15;
                                          gui_Left                   : 122;
                                          gui_Height                 : 14;
                                          gui_Width                  : 16;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 322);
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_H_1      : ({$REGION ' - FInGame_UI_Belt_Item_Field_H_1   '}
                                           gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_1;
                                           gui_Type                   : ctPanel;
                                           gui_Form_Type              : ftNone;
                                           gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                           gui_Top                    : 14;
                                           gui_Left                   : 141;
                                           gui_Height                 : 36;
                                           gui_Width                  : 36;
                                           gui_Enabled                : True;
                                           gui_Visible                : True
                                           {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_H_2      : ({$REGION ' - FInGame_UI_Belt_Item_Field_H_2   '}
                                           gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_2;
                                           gui_Type                   : ctPanel;
                                           gui_Form_Type              : ftNone;
                                           gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                           gui_Top                    : 14;
                                           gui_Left                   : 180;
                                           gui_Height                 : 36;
                                           gui_Width                  : 36;
                                           gui_Enabled                : True;
                                           gui_Visible                : True
                                           {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_H_3      : ({$REGION ' - FInGame_UI_Belt_Item_Field_H_3   '}
                                           gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_3;
                                           gui_Type                   : ctPanel;
                                           gui_Form_Type              : ftNone;
                                           gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                           gui_Top                    : 14;
                                           gui_Left                   : 219;
                                           gui_Height                 : 36;
                                           gui_Width                  : 36;
                                           gui_Enabled                : True;
                                           gui_Visible                : True
                                           {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_H_4      : ({$REGION ' - FInGame_UI_Belt_Item_Field_H_4   '}
                                           gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_4;
                                           gui_Type                   : ctPanel;
                                           gui_Form_Type              : ftNone;
                                           gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                           gui_Top                    : 14;
                                           gui_Left                   : 258;
                                           gui_Height                 : 36;
                                           gui_Width                  : 36;
                                           gui_Enabled                : True;
                                           gui_Visible                : True
                                           {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_H_5      : ({$REGION ' - FInGame_UI_Belt_Item_Field_H_5   '}
                                           gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_5;
                                           gui_Type                   : ctPanel;
                                           gui_Form_Type              : ftNone;
                                           gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                           gui_Top                    : 14;
                                           gui_Left                   : 297;
                                           gui_Height                 : 36;
                                           gui_Width                  : 36;
                                           gui_Enabled                : True;
                                           gui_Visible                : True
                                           {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_H_6      : ({$REGION ' - FInGame_UI_Belt_Item_Field_H_6   '}
                                           gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_6;
                                           gui_Type                   : ctPanel;
                                           gui_Form_Type              : ftNone;
                                           gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                           gui_Top                    : 14;
                                           gui_Left                   : 336;
                                           gui_Height                 : 36;
                                           gui_Width                  : 36;
                                           gui_Enabled                : True;
                                           gui_Visible                : True
                                           {$ENDREGION}
                );
    { Vertical Belt Info }
      FInGame_UI_Belt_Background_V        : ({$REGION ' - FInGame_UI_Belt_Background_V     '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_BACKGROUND;
                                          gui_Type                   : ctForm;
                                          gui_Form_Type              : ftMoving;
                                          gui_WorkField              : (Left:1; Top:1; Right:50; Bottom:272);
                                          gui_Top                    : 270;
                                          gui_Left                   : 86;
                                          gui_Height                 : 274;
                                          gui_Width                  : 52;
                                          gui_Blend_Size             : 250;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Background_Texture_ID    : 321);
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Btn_Rotate_V        : ({$REGION ' - FInGame_UI_Belt_Btn_Rotate_V     '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_BTN_ROTATE;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 4;
                                          gui_Left                   : 8;
                                          gui_Height                 : 14;
                                          gui_Width                  : 16;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 323);
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Btn_Close_V         : ({$REGION ' - FInGame_UI_Belt_Btn_Close_V      '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_BTN_CLOSE;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 4;
                                          gui_Left                   : 29;
                                          gui_Height                 : 14;
                                          gui_Width                  : 16;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 322);
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_V_1      : ({$REGION ' - FInGame_UI_Belt_Item_Field_V_1   '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_1;
                                          gui_Type                   : ctPanel;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                          gui_Top                    : 23;
                                          gui_Left                   : 7;
                                          gui_Height                 : 36;
                                          gui_Width                  : 36;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_V_2      : ({$REGION ' - FInGame_UI_Belt_Item_Field_V_2   '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_2;
                                          gui_Type                   : ctPanel;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                          gui_Top                    : 62;
                                          gui_Left                   : 7;
                                          gui_Height                 : 36;
                                          gui_Width                  : 36;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_V_3      : ({$REGION ' - FInGame_UI_Belt_Item_Field_V_3   '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_3;
                                          gui_Type                   : ctPanel;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                          gui_Top                    : 101;
                                          gui_Left                   : 7;
                                          gui_Height                 : 36;
                                          gui_Width                  : 36;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_V_4      : ({$REGION ' - FInGame_UI_Belt_Item_Field_V_4   '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_4;
                                          gui_Type                   : ctPanel;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                          gui_Top                    : 140;
                                          gui_Left                   : 7;
                                          gui_Height                 : 36;
                                          gui_Width                  : 36;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_V_5      : ({$REGION ' - FInGame_UI_Belt_Item_Field_V_5   '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_5;
                                          gui_Type                   : ctPanel;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                          gui_Top                    : 179;
                                          gui_Left                   : 7;
                                          gui_Height                 : 36;
                                          gui_Width                  : 36;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      FInGame_UI_Belt_Item_Field_V_6      : ({$REGION ' - FInGame_UI_Belt_Item_Field_V_6   '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_BELT_UI_ITEM_FIELD_6;
                                          gui_Type                   : ctPanel;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:36; Bottom:36);
                                          gui_Top                    : 218;
                                          gui_Left                   : 7;
                                          gui_Height                 : 36;
                                          gui_Width                  : 36;
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );


(*
  TODO : GUI Defination Switch Function Needet

    FInGame_UI_Belt_Background                : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Background_V            : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_1          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_2          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_3          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_4          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_5          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_V_6          : TMir3_GUI_Ground_Info;  //

      FInGame_UI_Belt_Background_H            : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_1          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_2          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_3          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_4          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_5          : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Item_Field_H_6          : TMir3_GUI_Ground_Info;  //

      FInGame_UI_Belt_Btn_Rotate              : TMir3_GUI_Ground_Info;  //
      FInGame_UI_Belt_Btn_Close               : TMir3_GUI_Ground_Info;  //

  GUI_ID_INGAME_BELT_UI_BACKGROUND                = 480;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_1              = 481;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_2              = 482;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_3              = 483;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_4              = 484;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_5              = 485;
  GUI_ID_INGAME_BELT_UI_ITEM_FIELD_6              = 486;
  GUI_ID_INGAME_BELT_UI_BTN_ROTATE                = 487;
  GUI_ID_INGAME_BELT_UI_BTN_CLOSE                 = 488;
*)

      {$ENDREGION}
      
      {$REGION ' - MiniMap UI System               '}
      
      {$ENDREGION}     

      {$REGION ' - Menue Bar UI System             '}
      FInGame_UI_Menue_Bar_Background         : ({$REGION ' - FInGame_UI_Menue_Bar_Background    '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_WINDOW;
                                              gui_Type                   : ctForm;
                                              gui_Form_Type              : ftUIStatic;
                                              gui_WorkField              : (Left:58; Top:60; Right:198; Bottom:452);
                                              gui_Top                    : 95;
                                              gui_Left                   : 602;
                                              gui_Height                 : 512;
                                              gui_Width                  : 256;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Background_Texture_ID    : 310);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Setting        : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Setting  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_SETTING;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 92;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 81;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Chat           : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Chat    '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_CHAT;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 127;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 82;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Mail           : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Mail    '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_MAIL;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 162;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 83;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Group          : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Group   '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_GROUP;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 197;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 84;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Guild          : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Guild   '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_GUILD;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 232;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 85;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Avatar         : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Avatar  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_AVATAR;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 267;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 86;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Siege          : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Siege   '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_SIEGE;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 302;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 87;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Exit           : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Exit    '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_EXIT;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 337;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 88;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFD47A6B;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFA47A6B;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Features       : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Features  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_FEATURE;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 372;
                                              gui_Left                   : 83;
                                              gui_Height                 : 20;
                                              gui_Width                  : 89;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 89;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 311);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Menue_Bar_Btn_Close          : ({$REGION ' - FInGame_UI_Menue_Bar_Btn_Close  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_MENUEBAR_UI_BTN_CLOSE;
                                          gui_Type                   : ctButton;
                                          gui_Form_Type              : ftNone;
                                          gui_Top                    : 413;
                                          gui_Left                   : 160;
                                          gui_Height                 : 30;
                                          gui_Width                  : 32;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Mouse_Over_Texture_ID    : 1221;
                                                                        gui_Mouse_Down_Texture_ID    : 1222);
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      {$ENDREGION}

      {$REGION ' - Game Setting UI System          '}
      FInGame_UI_GameSetting_Background       : ({$REGION ' - FInGame_UI_GameSetting_Background    '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_WINDOW;
                                              gui_Type                   : ctForm;
                                              gui_Form_Type              : ftMoving;
                                              gui_WorkField              : (Left:110; Top:60; Right:290; Bottom:390);
                                              gui_Top                    : 80;
                                              gui_Left                   : 200;
                                              gui_Height                 : 512;
                                              gui_Width                  : 512;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Background_Texture_ID    : 290);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_Btn_Close        : ({$REGION ' - FInGame_UI_GameSetting_Btn_Close  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_CLOSE;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 406;
                                              gui_Left                   : 351;
                                              gui_Height                 : 30;
                                              gui_Width                  : 32;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 1221;
                                                                            gui_Mouse_Down_Texture_ID    : 1222);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_Btn_Basic        : ({$REGION ' - FInGame_UI_GameSetting_Btn_Basic       '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_BASIC;
                                              gui_Type                   : ctTextButton;
                                              gui_Form_Type              : ftNone;
                                              gui_WorkField              : (Left:0; Top:0; Right:28; Bottom:12);
                                              gui_Top                    : 74;
                                              gui_Left                   : 127;
                                              gui_Height                 : 23;
                                              gui_Width                  : 60;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 101;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFF0F0F0;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter;
                                                                            gui_Font_Setting     : [fsBold]);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFBDBDFF;
                                                                            gui_ColorPress       : $FF9595AD);                              
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_Btn_Permit       : ({$REGION ' - FInGame_UI_GameSetting_Btn_Permit       '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_PERMIT;
                                              gui_Type                   : ctTextButton;
                                              gui_Form_Type              : ftNone;
                                              gui_WorkField              : (Left:0; Top:0; Right:28; Bottom:12);
                                              gui_Top                    : 74;
                                              gui_Left                   : 187;
                                              gui_Height                 : 23;
                                              gui_Width                  : 67;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 102;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFF0F0F0;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter;
                                                                            gui_Font_Setting     : [fsBold]);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFBDBDFF;
                                                                            gui_ColorPress       : $FF9595AD);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_Btn_Chatting     : ({$REGION ' - FInGame_UI_GameSetting_Btn_Chatting     '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_CHATTING;
                                              gui_Type                   : ctTextButton;
                                              gui_Form_Type              : ftNone;
                                              gui_WorkField              : (Left:0; Top:0; Right:28; Bottom:12);
                                              gui_Top                    : 74;
                                              gui_Left                   : 256;
                                              gui_Height                 : 23;
                                              gui_Width                  : 67;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 103;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFF0F0F0;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter;
                                                                            gui_Font_Setting     : [fsBold]);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFBDBDFF;
                                                                            gui_ColorPress       : $FF9595AD);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_Btn_Visual       : ({$REGION ' - FInGame_UI_GameSetting_Btn_Visual     '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_VISUAL;
                                              gui_Type                   : ctTextButton;
                                              gui_Form_Type              : ftNone;
                                              gui_WorkField              : (Left:0; Top:0; Right:28; Bottom:12);
                                              gui_Top                    : 74;
                                              gui_Left                   : 325;
                                              gui_Height                 : 23;
                                              gui_Width                  : 60;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 104;                  //bdbdff
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFF0F0F0;
                                                                            gui_Font_Use_Kerning : False;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter;
                                                                            gui_Font_Setting     : [fsBold]);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFBDBDFF;
                                                                            gui_ColorPress       : $FF9595AD);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      {$REGION ' - Page 1 (Basic)    '}
      { Attack Mode }
      FInGame_UI_GameSetting_Btn_1_P1         : ({$REGION ' - FInGame_UI_GameSetting_Btn_1_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P1;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 109;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 295);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_1_P1   : ({$REGION ' - FInGame_UI_GameSetting_TextField_1_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P1;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 110;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 111;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Forced Attack Mode }
      FInGame_UI_GameSetting_Btn_2_P1         : ({$REGION ' - FInGame_UI_GameSetting_Btn_2_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P1;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 139;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_2_P1   : ({$REGION ' - FInGame_UI_GameSetting_TextField_2_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P1;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 140;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 115;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Background Music (On/Off) }
      FInGame_UI_GameSetting_Btn_3_P1         : ({$REGION ' - FInGame_UI_GameSetting_Btn_3_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_3_P1;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 169;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_3_P1   : ({$REGION ' - FInGame_UI_GameSetting_TextField_3_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_3_P1;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 170;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 118;
                                              gui_HintID                 : 119;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Sound Effect (On/Off) }
      FInGame_UI_GameSetting_Btn_4_P1         : ({$REGION ' - FInGame_UI_GameSetting_Btn_4_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P1;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 229;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_4_P1   : ({$REGION ' - FInGame_UI_GameSetting_TextField_4_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P1;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 230;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 120;
                                              gui_HintID                 : 121;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Right <--> Left Sound (3D Sound) On/OFF }
      FInGame_UI_GameSetting_Btn_5_P1         : ({$REGION ' - FInGame_UI_GameSetting_Btn_5_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P1;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 289;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_5_P1   : ({$REGION ' - FInGame_UI_GameSetting_TextField_5_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P1;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 290;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 122;
                                              gui_HintID                 : 123;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Automatic Picking a Item (On/Off) }
      FInGame_UI_GameSetting_Btn_6_P1         : ({$REGION ' - FInGame_UI_GameSetting_Btn_6_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_6_P1;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 319;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_6_P1   : ({$REGION ' - FInGame_UI_GameSetting_TextField_6_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_6_P1;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 320;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 124;
                                              gui_HintID                 : 125;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Display Name of a dropped Item (On/Off) }
      FInGame_UI_GameSetting_Btn_7_P1         : ({$REGION ' - FInGame_UI_GameSetting_Btn_7_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_7_P1;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 349;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_7_P1   : ({$REGION ' - FInGame_UI_GameSetting_TextField_7_P1  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_7_P1;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 350;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 126;
                                              gui_HintID                 : 127;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Background Music Volume Slider  }
      FInGame_UI_GameSetting_Volume_BGM   : ({$REGION ' - FInGame_UI_GameSetting_Volume_BGM  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_SLIDER_BGM;
                                          gui_Type                   : ctSlider;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:177; Bottom:22);
                                          gui_Top                    : 199;
                                          gui_Left                   : 133;
                                          gui_Height                 : 22;
                                          gui_Width                  : 180;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID       : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Background_Texture_ID : 305;
                                                                        gui_Slider_Texture_ID     : 303);
                                          gui_Slider_Setup           : (gui_Min      : 0;
                                                                        gui_Max      : 100;
                                                                        gui_Value    : 50;
                                                                        gui_Btn_Size : (Left:0; Top:0; Right:8; Bottom:22));
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      { Sound FX Volume Slider }
      FInGame_UI_GameSetting_Volume_SFX   : ({$REGION ' - FInGame_UI_GameSetting_Volume_SFX  '}
                                          gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_SLIDER_SFX;
                                          gui_Type                   : ctSlider;
                                          gui_Form_Type              : ftNone;
                                          gui_WorkField              : (Left:0; Top:0; Right:177; Bottom:22);
                                          gui_Top                    : 259;
                                          gui_Left                   : 133;
                                          gui_Height                 : 22;
                                          gui_Width                  : 180;
                                          gui_Blend_Size             : 255;
                                          gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                        gui_Background_Texture_ID  : 305;
                                                                        gui_Slider_Texture_ID      : 303);
                                          gui_Slider_Setup           : (gui_Min      : 0;
                                                                        gui_Max      : 100;
                                                                        gui_Value    : 90;
                                                                        gui_Btn_Size : (Left:0; Top:0; Right:8; Bottom:22));                                                                        
                                          gui_Enabled                : True;
                                          gui_Visible                : True
                                          {$ENDREGION}
                );
      {$ENDREGION}

      {$REGION ' - Page 2 (Permit)   '}
      { Permitt Group Invitation (On/Off) }
      FInGame_UI_GameSetting_Btn_1_P2         : ({$REGION ' - FInGame_UI_GameSetting_Btn_1_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P2;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 109;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300)
                                                                            );
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_1_P2   : ({$REGION ' - FInGame_UI_GameSetting_TextField_1_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P2;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 110;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 128;
                                              gui_HintID                 : 129;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Guild Joining Allowed (On/Off) }
      FInGame_UI_GameSetting_Btn_2_P2         : ({$REGION ' - FInGame_UI_GameSetting_Btn_2_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P2;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 139;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300)
                                                                            );
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_2_P2   : ({$REGION ' - FInGame_UI_GameSetting_TextField_2_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P2;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 140;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 130;
                                              gui_HintID                 : 131;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Resurrection Allowed (On/Off) }
      FInGame_UI_GameSetting_Btn_3_P2         : ({$REGION ' - FInGame_UI_GameSetting_Btn_3_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_3_P2;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 169;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300)
                                                                            );
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_3_P2   : ({$REGION ' - FInGame_UI_GameSetting_TextField_3_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_3_P2;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 170;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 132;
                                              gui_HintID                 : 133;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Recall Allowed (On/Off) }
      FInGame_UI_GameSetting_Btn_4_P2         : ({$REGION ' - FInGame_UI_GameSetting_Btn_4_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P2;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 199;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300)
                                                                            );
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_4_P2   : ({$REGION ' - FInGame_UI_GameSetting_TextField_4_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P2;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 200;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 134;
                                              gui_HintID                 : 135;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Trading Allowed (On/Off) }
      FInGame_UI_GameSetting_Btn_5_P2         : ({$REGION ' - FInGame_UI_GameSetting_Btn_5_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P2;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 229;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300)
                                                                            );
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_5_P2   : ({$REGION ' - FInGame_UI_GameSetting_TextField_5_P2  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P2;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 230;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 136;
                                              gui_HintID                 : 137;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      {$ENDREGION}

      {$REGION ' - Page 3 (Chatting) '}
      { Whispering Allowed (On/Off) }
      FInGame_UI_GameSetting_Btn_1_P3         : ({$REGION ' - FInGame_UI_GameSetting_Btn_1_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P3;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 109;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_1_P3   : ({$REGION ' - FInGame_UI_GameSetting_TextField_1_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P3;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 110;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 148;
                                              gui_HintID                 : 149;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Shouting Allowed (On/Off) }
      FInGame_UI_GameSetting_Btn_2_P3         : ({$REGION ' - FInGame_UI_GameSetting_Btn_2_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P3;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 139;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_2_P3   : ({$REGION ' - FInGame_UI_GameSetting_TextField_2_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P3;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 140;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 150;
                                              gui_HintID                 : 151;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      // Btn_3_P3 Not used atm Hold Pos for latter
      { Guild Message Allowed (On/Off) }
      FInGame_UI_GameSetting_Btn_4_P3         : ({$REGION ' - FInGame_UI_GameSetting_Btn_4_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P3;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 199;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_4_P3   : ({$REGION ' - FInGame_UI_GameSetting_TextField_4_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P3;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 200;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 154;
                                              gui_HintID                 : 155;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Lock Whispering from certain User (On/Off) }
      FInGame_UI_GameSetting_Btn_5_P3         : ({$REGION ' - FInGame_UI_GameSetting_Btn_5_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P3;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 229;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 306);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_5_P3   : ({$REGION ' - FInGame_UI_GameSetting_TextField_5_P3  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P3;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 230;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 156;
                                              gui_HintID                 : 157;
                                              gui_Font                   : (gui_Font_Size        : 16;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      {$ENDREGION}

      {$REGION ' - Page 4 (Visual)   '}
      { HP Change Display (On/Off) }
      FInGame_UI_GameSetting_Btn_1_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_1_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_1_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 109;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_1_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_1_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_1_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 110;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 169;
                                              gui_HintID                 : 170;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Magic Graphic Effect Display (On/Off) }
      FInGame_UI_GameSetting_Btn_2_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_1_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_2_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 139;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_2_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_2_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_2_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 140;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 171;
                                              gui_HintID                 : 172;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Bright Shadow (On/Off) }
      FInGame_UI_GameSetting_Btn_3_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_3_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_3_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 169;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_3_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_3_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_3_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 170;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 173;
                                              gui_HintID                 : 174;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Helmet Display (On/Off) }
      FInGame_UI_GameSetting_Btn_4_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_4_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_4_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 199;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_4_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_4_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_4_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 200;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 175;
                                              gui_HintID                 : 176;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Monster Effect Display (On/Off) }
      FInGame_UI_GameSetting_Btn_5_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_5_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_5_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 229;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_5_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_5_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_5_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 230;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 177;
                                              gui_HintID                 : 178;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Dyed Hair Display (On/Off) }
      FInGame_UI_GameSetting_Btn_6_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_6_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_6_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 259;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_6_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_6_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_6_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 260;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 179;
                                              gui_HintID                 : 180;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Display Avatar (On/Off) }
      FInGame_UI_GameSetting_Btn_7_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_7_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_7_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 289;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_7_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_7_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_7_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 290;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 181;
                                              gui_HintID                 : 182;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { MiniMap Monster Display (On/Off) }
      FInGame_UI_GameSetting_Btn_8_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_8_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_8_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 319;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_8_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_8_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_8_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 320;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 183;
                                              gui_HintID                 : 184;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { HP Gauge Display (Show HP Gauge) (On/Off) }
      FInGame_UI_GameSetting_Btn_9_P4         : ({$REGION ' - FInGame_UI_GameSetting_Btn_9_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_9_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 349;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_9_P4   : ({$REGION ' - FInGame_UI_GameSetting_TextField_9_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_9_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 350;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 185;
                                              gui_HintID                 : 186;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      { Display Monster HP (Show HP Gauge) (On/Off) }
      FInGame_UI_GameSetting_Btn_10_P4        : ({$REGION ' - FInGame_UI_GameSetting_Btn_10_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_BTN_10_P4;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 379;
                                              gui_Left                   : 320;
                                              gui_Height                 : 22;
                                              gui_Width                  : 64;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID        : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID  : 297;
                                                                            gui_Extra_Texture_Set      : (gui_Background_Texture_ID : 299;
                                                                                                          gui_Mouse_Over_Texture_ID : 300));
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_GameSetting_TextField_10_P4  : ({$REGION ' - FInGame_UI_GameSetting_TextField_10_P4  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_GAME_SETTING_UI_TEXT_FIELD_10_P4;
                                              gui_Type                   : ctTextLabel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 380;
                                              gui_Left                   : 130;
                                              gui_Height                 : 22;
                                              gui_Width                  : 180;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 187;
                                              gui_HintID                 : 188;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFFF9400;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_ShowBorder             : True;
                                              gui_ShowPanel              : True;
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      {$ENDREGION}

      {$ENDREGION}    

      {$REGION ' - Body Window UI System           '}
      FInGame_UI_Body_Window                  : ({$REGION ' - FInGame_UI_Body_Window     '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_BODY_UI_WINDOW;
                                              gui_Type                   : ctForm;
                                              gui_Form_Type              : ftMoving;
                                              gui_WorkField              : (Left:95; Top:25; Right:320; Bottom:460);
                                              gui_Top                    : 10;
                                              gui_Left                   : -80;
                                              gui_Height                 : 512;
                                              gui_Width                  : 512;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Background_Texture_ID    : 180);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Body_Btn_Close               : ({$REGION ' - FInGame_UI_Body_Btn_Close  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_BODY_UI_BTN_CLOSE;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 37;
                                              gui_Left                   : 379;
                                              gui_Height                 : 30;
                                              gui_Width                  : 32;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 1221;
                                                                            gui_Mouse_Down_Texture_ID    : 1222);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );

      {$ENDREGION}
      
      {$REGION ' - Body Show Window UI System      '}
      FInGame_UI_Body_Show_Window                  : ({$REGION ' - FInGame_UI_Body_Show_Window     '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_BODY_SHOW_UI_WINDOW;
                                              gui_Type                   : ctForm;
                                              gui_Form_Type              : ftMoving;
                                              gui_WorkField              : (Left:95; Top:25; Right:320; Bottom:460);
                                              gui_Top                    : 10;
                                              gui_Left                   : -80;
                                              gui_Height                 : 512;
                                              gui_Width                  : 512;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Background_Texture_ID    : 200);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Body_Show_Btn_Close          : ({$REGION ' - FInGame_UI_Body_Show_Btn_Close  '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_BODY_SHOW_UI_BTN_CLOSE;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 401;
                                              gui_Left                   : 360;
                                              gui_Height                 : 30;
                                              gui_Width                  : 32;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 1221;
                                                                            gui_Mouse_Down_Texture_ID    : 1222);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      {$ENDREGION}      
       
      {$REGION ' - Magic Window UI System          '}
        //TODO : Class Controler (War/Wiz/Tao - Ass View)
         {$REGION ' - Magic War/Wiz/Tao '}

         {$ENDREGION}
         
         {$REGION ' - Magic Assassin '}

         {$ENDREGION}         
      {$ENDREGION}  

      {$REGION ' - Quest Window UI System          '}
      
      {$ENDREGION}       
      
      {$REGION ' - Bag Window UI System            '}
      
      {$ENDREGION}        
       
      {$REGION ' - Group Window UI System          '}
      
      {$ENDREGION}        
      
      {$REGION ' - Guild Window UI System          '}
      
      {$ENDREGION}        
      
      {$REGION ' - Trade Window UI System          '}
      
      {$ENDREGION}        

      {$REGION ' - Target Window UI System         '}
        // New Control (Top Center and show Selected Target and HP of this Target)
      {$ENDREGION}        
                        
      {$REGION ' - Auto Features Window UI System  '}
      
      {$ENDREGION}
      
      {$REGION ' - Avatar Setup Window UI System   '}
      
      {$ENDREGION}
      
      {$REGION ' - Siege (WAR) Window UI System    '}
      
      {$ENDREGION}      
      
      {$REGION ' - Mail/Message Window UI System   '}
      
      {$ENDREGION}      
      
      {$REGION ' - Show Mail/Info Icon UI System   '}
         // IF new Message or other Aviable
      {$ENDREGION}      
      
      {$REGION ' - Pet Main Window UI System       '}
      
      {$ENDREGION}         

      {$REGION ' - Pet Bag Window UI System        '}
      
      {$ENDREGION}       
      
      {$REGION ' - Fishing Window UI System        '}
      
      {$ENDREGION}         

      {$REGION ' - Exit Window UI System           '}
      FInGame_UI_ExitWindow_Background        : ({$REGION ' - FInGame_UI_ExitWindow_Background '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_EXIT_WINDOW_UI_WINDOW;
                                              gui_Type                   : ctForm;
                                              gui_Form_Type              : ftUIStatic;
                                              gui_WorkField              : (Left:2; Top:9; Right:249; Bottom:110);
                                              gui_Top                    : 206;
                                              gui_Left                   : 272;
                                              gui_Height                 : 128;
                                              gui_Width                  : 256;
                                              gui_Blend_Size             : 255;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Background_Texture_ID    : 410);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Exit_Text_Info               : ({$REGION ' - FInGame_UI_Exit_Text_Info        '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_EXIT_TEXT_UI_INFO;
                                              gui_Type                   : ctPanel;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 36;
                                              gui_Left                   : 25;
                                              gui_Height                 : 20;
                                              gui_Width                  : 205;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 194;
                                              gui_Font                   : (gui_Font_Size        : 16;
                                                                            gui_Font_Color       : $FFF5F5F5;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter;
                                                                            gui_Font_Setting     : [fsBold]);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
              );
      FInGame_UI_Exit_Btn_Exit                : ({$REGION ' - FInGame_UI_Exit_Btn_Exit         '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_EXIT_BTN_UI_EXIT;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 76;
                                              gui_Left                   : 26;
                                              gui_Height                 : 20;
                                              gui_Width                  : 72;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 190;
                                              gui_HintID                 : 191;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFF5F5F5;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 411);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Exit_Btn_Logout              : ({$REGION ' - FInGame_UI_Exit_Btn_Logout       '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_EXIT_BTN_UI_LOGOUT;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 76;
                                              gui_Left                   : 116;
                                              gui_Height                 : 20;
                                              gui_Width                  : 72;
                                              gui_Blend_Size             : 255;
                                              gui_CaptionID              : 192;
                                              gui_HintID                 : 193;
                                              gui_Font                   : (gui_Font_Size        : 18;
                                                                            gui_Font_Color       : $FFF5F5F5;
                                                                            gui_Font_Text_HAlign : alCenter;
                                                                            gui_Font_Text_VAlign : avCenter);
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 411);
                                              gui_Btn_Font_Color         : (gui_ColorSelect      : $FFAF9400;
                                                                            gui_ColorPress       : $FFF0F0F0;
                                                                            gui_ColorDisabled    : $FF808080);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      FInGame_UI_Exit_Btn_Close               : ({$REGION ' - FInGame_UI_Exit_Btn_Close        '}
                                              gui_Unique_Control_Number  : GUI_ID_INGAME_EXIT_BTN_UI_CLOSE;
                                              gui_Type                   : ctButton;
                                              gui_Form_Type              : ftNone;
                                              gui_Top                    : 68;
                                              gui_Left                   : 203;
                                              gui_Height                 : 30;
                                              gui_Width                  : 32;
                                              gui_Blend_Size             : 255;
                                              gui_HintID                 : 195;
                                              gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                            gui_Mouse_Over_Texture_ID    : 1221;
                                                                            gui_Mouse_Down_Texture_ID    : 1222);
                                              gui_Enabled                : True;
                                              gui_Visible                : True
                                              {$ENDREGION}
                );
      {$ENDREGION}

    {$ENDREGION}

  );



  
(*

                                   gui_WorkField              : (Left:0; Top:0; Right:306; Bottom:226);

                                   gui_Control_Texture        : (gui_Texture_File_ID          : GAME_TEXTURE_GAMEINTER_INT;
                                                                 gui_Background_Texture_ID    : 420;
                                                                 gui_Mouse_Over_Texture_ID    : 0;
                                                                 gui_Mouse_Down_Texture_ID    : 0;
                                                                 gui_Mouse_Select_Texture_ID  : 0;
                                                                 gui_Mouse_Disable_Texture_ID : 0;
                                                                 gui_Slider_Texture_ID        : 0;
                                                                 gui_Random_Texture_From      : 0;
                                                                 gui_Random_Texture_To        : 0);

                                     gui_Font                   : (gui_Font_Size        : 16;
                                                                   gui_Font_Color       : $FFF2F2F2;
                                                                   gui_Font_Use_Kerning : False;
                                                                   gui_Font_Text_HAlign : alCenter;
                                                                   gui_Font_Text_VAlign : avCenter;
                                                                   gui_Font_Setting     : [fsBold]);

*)



implementation

end.






