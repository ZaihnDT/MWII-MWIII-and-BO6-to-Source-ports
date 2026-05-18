$maxverts 9999999

$modelname "c_ar_augpapa.mdl"

$bodygroup "ref"
{
	studio "refsmar.smd"
}

$bodygroup "body"
{
	studio "bodysmg.smd"
}

$bodygroup "muzzle"
{
	studio "muzzle.smd"
	blank
}

$bodygroup "barrel"
{
	studio "barrel.smd"
}

$bodygroup "sight"
{
	studio "sight.smd"
	blank
}

$bodygroup "mag"
{
studio "augolf_mag_cust.smd"
	blank
}

$bodygroup "stock"
{
	studio "stock.smd"
}

$bodygroup "mount_laser"
{
	blank
}

$bodygroup "ref_hide"
{
	blank
}

$bodygroup "pgrip"
{
	blank
}

$bodygroup "rack"
{
	blank
}

$bodygroup "ammo"
{
	studio "556nato.smd"
	blank
}

// C Hands Bones
$include bones_chands.qci

// MW Rig Bones
$include bones_mwrig.qci

// Weapon Bones
$include bones_weapon.qc

$surfaceprop "default"
$contents "solid"
$illumposition 0 0 0

$cdmaterials "zaihny\mw22\weapons\augolf_cust\"
$cdmaterials "models\mw22\aug\"
$cdmaterials "models\cod2019\shared\"
$cdmaterials "models\weapons\v_arccw_go\atts\"

$attachment "1" "tag_flash" -1 0 0 rotate 0 0 0
$attachment "2" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "3" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

//$include "definebones.qci"
$include "additives.qci"

$sequence "idle" {
	"anims\idle.smd"
	fps 0.416
	"ACT_VM_IDLE" 1
	loop
	fadein 0.3
	fadeout 0.3
	node "Ready"
	addlayer "blend_move"
	addlayer "blend_walk"
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "shoot1" {
	"anims\shoot1.smd"
	"anims\shoot1_ads.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 9011 0 "1" }
	{ event 9021 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
	blend "aim_blend" 0 1
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload" {
	"anims\reload.smd"
	"anims\reload_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 16 "Viewmodel.Small" }
	{ event 5004 17 "Viewmodel.Small" }
	{ event 5004 40 "Viewmodel.Small" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 55 "1" }
	{ event 5004 63 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty" {
	"anims\reload_empty.smd"
	"anims\reload_empty_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 10 "Viewmodel.Medium" }
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Small" }
	{ event 5004 34 "Viewmodel.Small" }
	{ event 5004 57 "Viewmodel.Small" }
	{ event 5004 65 "Viewmodel.Medium" }
	{ event 5004 79 "Viewmodel.Medium" }
	{ event 9011 89 "1" }
	{ event 5004 95 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_fast" {
	"anims\reload_fast.smd"
	"anims\reload_fast_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 11 "Viewmodel.Medium" }
	{ event 5004 27 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 37 "1" }
	{ event 5004 43 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_fast" {
	"anims\reload_empty_fast.smd"
	"anims\reload_empty_fast_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 12 "Viewmodel.Small" }
	{ event 5004 28 "Viewmodel.Small" }
	{ event 5004 32 "Viewmodel.Medium" }
	{ event 5004 41 "Viewmodel.Small" }
	{ event 9011 48 "1" }
	{ event 5004 53 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag" {
	"anims\reload_xmag.smd"
	"anims\reload_xmag_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 10 "Viewmodel.Medium" }
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 30 "Viewmodel.Small" }
	{ event 5004 33 "Viewmodel.Small" }
	{ event 5004 57 "Viewmodel.Small" }
	{ event 5004 65 "Viewmodel.Medium" }
	{ event 5004 73 "Viewmodel.Medium" }
	{ event 9011 76 "1" }
	{ event 5004 77 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_xmag" {
	"anims\reload_empty_xmag.smd"
	"anims\reload_empty_xmag_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 16 "Viewmodel.Small" }
	{ event 5004 17 "Viewmodel.Small" }
	{ event 5004 40 "Viewmodel.Small" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 56 "1" }
	{ event 5004 63 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_xmag_fast" {
	"anims\reload_xmag_fast.smd"
	"anims\reload_xmag_fast_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 11 "Viewmodel.Medium" }
	{ event 5004 27 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 38 "1" }
	{ event 5004 43 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_xmag_fast" {
	"anims\reload_empty_xmag_fast.smd"
	"anims\reload_empty_xmag_fast_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 12 "Viewmodel.Small" }
	{ event 5004 28 "Viewmodel.Small" }
	{ event 5004 32 "Viewmodel.Medium" }
	{ event 5004 41 "Viewmodel.Small" }
	{ event 9011 50 "1" }
	{ event 5004 54 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_smag" {
	"anims\reload_smag.smd"
	"anims\reload_smag_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 10 "Viewmodel.Medium" }
	{ event 5004 13 "Viewmodel.Small" }
	{ event 5004 28 "Viewmodel.Small" }
	{ event 5004 34 "Viewmodel.Small" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 52 "1" }
	{ event 5004 54 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_smag" {
	"anims\reload_empty_smag.smd"
	"anims\reload_empty_smag_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 15 "Viewmodel.Small" }
	{ event 5004 17 "Viewmodel.Small" }
	{ event 5004 40 "Viewmodel.Small" }
	{ event 5004 48 "Viewmodel.Medium" }
	{ event 9011 55 "1" }
	{ event 5004 63 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_smag_fast" {
	"anims\reload_smag_fast.smd"
	"anims\reload_smag_fast_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 11 "Viewmodel.Medium" }
	{ event 5004 27 "Viewmodel.Small" }
	{ event 5004 31 "Viewmodel.Medium" }
	{ event 9011 38 "1" }
	{ event 5004 43 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "reload_empty_smag_fast" {
	"anims\reload_empty_smag_fast.smd"
	"anims\reload_empty_smag_fast_2.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	blend "aim_blend" 0 1
	{ event 9011 0 "0" }
	{ event 5004 12 "Viewmodel.Small" }
	{ event 5004 28 "Viewmodel.Small" }
	{ event 5004 32 "Viewmodel.Medium" }
	{ event 5004 41 "Viewmodel.Small" }
	{ event 9011 48 "1" }
	{ event 5004 53 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "draw" {
	"anims\vm_p03_sm_apapa_raise_first.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	{ event 5004 11 "Viewmodel.Large" }
	{ event 5004 18 "Viewmodel.Large" }
	{ event 5004 27 "Viewmodel.Medium" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "draw_short" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9011 8 "1" }
	{ event 5004 19 "Viewmodel.Large" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "holster" {
	"anims\holster.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9021 0 "0" }
	{ event 9011 7 "0" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "lookat01" {
	"anims\inspect.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 4 "0" }
	{ event 9021 1 "1" }
	{ event 9011 134 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "lookat02" {
	"anims\inspect_empty.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 4 "0" }
	{ event 9021 1 "1" }
	{ event 9011 134 "1" }
	rotate -90
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "lookat01_smag" {
	"anims\inspect_smag.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.3
	fadeout 0.3
	fps 30
	{ event 9011 4 "0" }
	{ event 9021 1 "1" }
	{ event 9011 87 "1" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint" {
	"anims\sprint.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint_in" {
	"anims\sprint_out.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	reverse
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "sprint_out" {
	"anims\sprint_out.smd"
	fadein 0.3
	fadeout 0.3
	fps 30
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee_miss_01" {
	"anims\melee_miss_01.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee_miss_02" {
	"anims\melee_miss_02.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "melee_miss_03" {
	"anims\melee_miss_03.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
	{ event 9011 0 "0" }
	{ event 9021 0 "0" }
	{ event 5004 7 "Viewmodel.Large" }
	{ event 5004 8 "Viewmodel.Medium" }
	{ event 9021 26 "1" }
	{ event 9011 26 "1" }
	{ event 5004 31 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "semi_off" {
	"anims\firemode_off.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 5004 9 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$sequence "semi_on" {
	"anims\firemode_on.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	{ event 5004 9 "Viewmodel.Small" }
	addlayer "blend_move"
	addlayer "blend_walk"
	ikrule rhand touch "tag_sling" usesource
	ikrule lhand touch "tag_sling" usesource
}

$keyvalues
{
    "keep_bones"
    {
        "j_ammo_01" "1"
        "j_ammo_02" "1"
        "j_ammo_03" "1"
        "j_ammo_04" "1"
        "j_ammo_05" "1"
        "j_ammo_06" "1"
        "j_ammo_07" "1"
        "j_ammo_08" "1"
        "j_ammo_09" "1"
        "j_ammo_10" "1"
        "j_ammo_11" "1"
        "j_ammo_12" "1"
        "j_ammo_13" "1"
        "j_ammo_14" "1"
        "j_ammo_15" "1"
        "j_ammo_16" "1"
        "j_ammo_17" "1"
        "j_ammo_18" "1"
        "j_ammo_19" "1"
        "j_ammo_20" "1"
        "j_ammo_21" "1"
        "j_ammo_22" "1"
        "j_ammo_23" "1"
        "j_ammo_24" "1"
        "j_ammo_25" "1"
        "j_ammo_26" "1"
        "j_ammo_27" "1"
        "j_ammo_28" "1"
        "j_ammo_29" "1"
        "j_ammo_30" "1"
    }
}