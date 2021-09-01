.class public Lcom/caverock/androidsvg/SVGParser;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$TextScanner;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

.field private static aspectRatioKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field private static colourKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static fontSizeKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field

.field private static fontStyleKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Style$FontStyle;",
            ">;"
        }
    .end annotation
.end field

.field private static fontWeightKeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field private ignoreDepth:I

.field private ignoring:Z

.field private inMetadataElement:Z

.field private inStyleElement:Z

.field private metadataElementContents:Ljava/lang/StringBuilder;

.field private metadataTag:Ljava/lang/String;

.field private styleElementContents:Ljava/lang/StringBuilder;

.field private svgDocument:Lcom/caverock/androidsvg/SVG;


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I
    .locals 3

    .line 67
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->values()[Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->CLASS:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->UNSUPPORTED:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clipPathUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_path:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->clip_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->cy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->d:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->direction:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->display:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->dy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fill_rule:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_family:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_size:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->font_weight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fy:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->gradientUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->height:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->href:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->id:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerHeight:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->markerWidth:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_end:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_mid:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->marker_start:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->mask:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->maskUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->media:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->offset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->orient:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->overflow:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->pathLength:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternContentUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternTransform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->patternUnits:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->preserveAspectRatio:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->r:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refX:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->refY:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredExtensions:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFeatures:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFonts:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->requiredFormats:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->rx:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->ry:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->solid_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->spreadMethod:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->startOffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_color:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stop_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dasharray:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_dashoffset:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linecap:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_linejoin:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_miterlimit:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->stroke_width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->style:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->systemLanguage:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_anchor:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->text_decoration:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->type:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->vector_effect:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->version:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewBox:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->viewport_fill_opacity:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->visibility:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->width:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->x2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y1:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->y2:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    .line 295
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    .line 298
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xf0f8ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aliceblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xfaebd7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "antiquewhite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aqua"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x7fffd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "aquamarine"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xf0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "azure"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xf5f5dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "beige"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xffe4c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "bisque"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "black"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xffebcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blanchedalmond"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x8a2be2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "blueviolet"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xa52a2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "brown"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xdeb887

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "burlywood"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x5f9ea0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cadetblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x7fff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chartreuse"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xd2691e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chocolate"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xff7f50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "coral"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x6495ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cornflowerblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xfff8dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cornsilk"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xdc143c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "crimson"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v2, "cyan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x8b8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkcyan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xb8860b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgoldenrod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xa9a9a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/16 v2, 0x6400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "darkgreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v2, "darkgrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xbdb76b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkkhaki"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x8b008b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkmagenta"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x556b2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkolivegreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xff8c00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkorange"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x9932cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkorchid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/high16 v1, 0x8b0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkred"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xe9967a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darksalmon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x8fbc8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkseagreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x483d8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkslateblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x2f4f4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkslategray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v2, "darkslategrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xced1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkturquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x9400d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkviolet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xff1493

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deeppink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xbfff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "deepskyblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x696969

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dimgray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v2, "dimgrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x1e90ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dodgerblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xb22222

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "firebrick"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xfffaf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "floralwhite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x228b22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "forestgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xff00ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fuchsia"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xdcdcdc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gainsboro"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xf8f8ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ghostwhite"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xffd700

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gold"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xdaa520

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "goldenrod"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v3, 0x8000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "green"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v3, 0xadff2f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "greenyellow"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v3, "grey"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xf0fff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "honeydew"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xff69b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hotpink"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xcd5c5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "indianred"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x4b0082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "indigo"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xfffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ivory"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xf0e68c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "khaki"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xe6e6fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lavender"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xfff0f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lavenderblush"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x7cfc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lawngreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xfffacd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lemonchiffon"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xadd8e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xf08080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightcoral"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xe0ffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightcyan"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xfafad2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightgoldenrodyellow"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xd3d3d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightgray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v3, 0x90ee90

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lightgreen"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v3, "lightgrey"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xffb6c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightpink"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xffa07a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightsalmon"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x20b2aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightseagreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x87cefa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightskyblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x778899

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightslategray"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v3, "lightslategrey"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xb0c4de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightsteelblue"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xffffe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lightyellow"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lime"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0x32cd32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "limegreen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v2, 0xfaf0e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "linen"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v2, "magenta"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/high16 v1, 0x800000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maroon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x66cdaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumaquamarine"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xba55d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumorchid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x9370db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumpurple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x3cb371

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumseagreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x7b68ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumslateblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xfa9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumspringgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x48d1cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumturquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xc71585

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mediumvioletred"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x191970

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "midnightblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xf5fffa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mintcream"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffe4e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mistyrose"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffe4b5    # 2.3500096E-38f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "moccasin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffdead

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navajowhite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navy"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xfdf5e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oldlace"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x808000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "olive"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x6b8e23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "olivedrab"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffa500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orange"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xff4500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orangered"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xda70d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "orchid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xeee8aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "palegoldenrod"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x98fb98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "palegreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xafeeee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "paleturquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xdb7093

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "palevioletred"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffefd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "papayawhip"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffdab9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "peachpuff"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xcd853f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "peru"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffc0cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pink"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xdda0dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xb0e0e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "powderblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x800080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "purple"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const/high16 v1, 0xff0000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "red"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xbc8f8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rosybrown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x4169e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "royalblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x8b4513

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "saddlebrown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xfa8072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "salmon"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xf4a460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sandybrown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x2e8b57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seagreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xfff5ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seashell"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xa0522d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sienna"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xc0c0c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "silver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x87ceeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "skyblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x6a5acd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slateblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x708090

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "slategray"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const-string v2, "slategrey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xfffafa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "snow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xff7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "springgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x4682b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "steelblue"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xd2b48c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x8080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "teal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xd8bfd8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "thistle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xff6347

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tomato"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x40e0d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "turquoise"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xee82ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "violet"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xf5deb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "wheat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "white"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xf5f5f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "whitesmoke"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0xffff00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "yellow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    const v1, 0x9acd32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "yellowgreen"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x3f31a9fc    # 0.694f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "xx-small"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x3f553f7d    # 0.833f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "x-small"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string v2, "small"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string v2, "medium"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x41666666    # 14.4f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string v2, "large"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x418a6666    # 17.3f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "x-large"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x41a5999a    # 20.7f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "xx-large"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x42a6a8f6    # 83.33f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string v2, "smaller"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string v2, "larger"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bold"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bolder"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "lighter"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "100"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "200"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "300"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v4, "400"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "500"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "600"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const-string v1, "700"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "800"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "900"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const-string v2, "italic"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Oblique:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const-string v2, "oblique"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string v2, "none"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMinYMin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMidYMin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMaxYMin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMinYMid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMidYMid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMaxYMid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMinYMax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMidYMax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    const-string/jumbo v2, "xMaxYMax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Structure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicStructure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ConditionalProcessing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Style"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "ViewportAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Shape"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicText"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "PaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicPaintAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "OpacityAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicGraphicsAttribute"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Marker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Gradient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Clip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "BasicClip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "Mask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    const-string v1, "View"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    .line 77
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 84
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 85
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 89
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 90
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    return-void
.end method

.method private circle(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<circle>"

    .line 1173
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1177
    new-instance v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Circle;-><init>()V

    .line 1178
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1179
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1180
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1181
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1182
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1183
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1184
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V

    .line 1185
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1176
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private clipPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<clipPath>"

    .line 1893
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1895
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1897
    new-instance v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$ClipPath;-><init>()V

    .line 1898
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1899
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1900
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1901
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1902
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1903
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1904
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V

    .line 1905
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1906
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1896
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private defs(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<defs>"

    .line 927
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Lcom/caverock/androidsvg/SVG$Defs;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Defs;-><init>()V

    .line 932
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 933
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 934
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 935
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 936
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 937
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 938
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 930
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ellipse(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<ellipse>"

    .line 1220
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1224
    new-instance v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Ellipse;-><init>()V

    .line 1225
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1226
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1227
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1228
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1229
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1230
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1231
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V

    .line 1232
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1223
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private g(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<g>"

    .line 905
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 909
    new-instance v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    .line 910
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 911
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 912
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 913
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 914
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 915
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 916
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 917
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 908
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private image(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<image>"

    .line 1006
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Image;-><init>()V

    .line 1011
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1012
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1013
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1014
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1015
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1016
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1017
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V

    .line 1018
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1019
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1009
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private line(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<line>"

    .line 1272
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1276
    new-instance v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Line;-><init>()V

    .line 1277
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1278
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1279
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1280
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1281
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1282
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1283
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V

    .line 1284
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1275
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private linearGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<linearGradiant>"

    .line 1666
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1668
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1670
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;-><init>()V

    .line 1671
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1672
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1673
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1674
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1675
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1676
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V

    .line 1677
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1678
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1669
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private marker(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<marker>"

    .line 1597
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1601
    new-instance v0, Lcom/caverock/androidsvg/SVG$Marker;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Marker;-><init>()V

    .line 1602
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1603
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1604
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1605
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1606
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1607
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1608
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V

    .line 1609
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1610
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1600
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private mask(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<mask>"

    .line 2087
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2089
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2091
    new-instance v0, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Mask;-><init>()V

    .line 2092
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 2093
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2094
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2095
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2096
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2097
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V

    .line 2098
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2099
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 2090
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseAttributesCircle(Lcom/caverock/androidsvg/SVG$Circle;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1191
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1193
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1194
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1203
    :cond_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1204
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1205
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <circle> element. r cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1200
    :cond_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1197
    :cond_4
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesClipPath(Lcom/caverock/androidsvg/SVG$ClipPath;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1912
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1914
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1915
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "objectBoundingBox"

    .line 1918
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1919
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "userSpaceOnUse"

    .line 1920
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1921
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1923
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for attribute clipPathUnits"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 1540
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1542
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1543
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1558
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1559
    new-instance v2, Ljava/util/HashSet;

    if-eqz v1, :cond_1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(I)V

    .line 1560
    :goto_1
    invoke-interface {p1, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFonts(Ljava/util/Set;)V

    goto :goto_2

    .line 1555
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFormats(Ljava/util/Set;)V

    goto :goto_2

    .line 1549
    :pswitch_2
    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredExtensions(Ljava/lang/String;)V

    goto :goto_2

    .line 1546
    :pswitch_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setRequiredFeatures(Ljava/util/Set;)V

    goto :goto_2

    .line 1552
    :cond_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$SvgConditional;->setSystemLanguage(Ljava/util/Set;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2541
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_2

    .line 2543
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    .line 2544
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "xml:id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "xml:space"

    .line 2549
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2550
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p2, "default"

    .line 2551
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2552
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    const-string p2, "preserve"

    .line 2553
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2554
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    goto :goto_2

    .line 2556
    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid value for \"xml:space\" attribute: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 2546
    :cond_5
    :goto_1
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method private parseAttributesEllipse(Lcom/caverock/androidsvg/SVG$Ellipse;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1238
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1240
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1241
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    const/16 v2, 0x39

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1255
    :cond_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1256
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1257
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <ellipse> element. ry cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1250
    :cond_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1251
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 1252
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <ellipse> element. rx cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1247
    :cond_5
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1244
    :cond_6
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1684
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1686
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1687
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_7

    const/16 v3, 0x19

    if-eq v2, v3, :cond_4

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1704
    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1708
    :catch_0
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid spreadMethod attribute. \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" is not a valid value."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1712
    :cond_2
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/xlink"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1714
    :cond_3
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v2, "objectBoundingBox"

    .line 1690
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1691
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "userSpaceOnUse"

    .line 1692
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1693
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 1695
    :cond_6
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for attribute gradientUnits"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1699
    :cond_7
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private parseAttributesImage(Lcom/caverock/androidsvg/SVG$Image;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1025
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1027
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1028
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x31

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1034
    :pswitch_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1031
    :pswitch_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1037
    :pswitch_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1038
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1039
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <use> element. width cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1052
    :cond_2
    invoke-static {p1, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1

    .line 1047
    :cond_3
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 1049
    :cond_4
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    goto :goto_1

    .line 1042
    :cond_5
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1043
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1044
    :cond_6
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <use> element. height cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesLine(Lcom/caverock/androidsvg/SVG$Line;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1290
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1292
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1293
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1305
    :pswitch_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1302
    :pswitch_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1299
    :pswitch_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1296
    :pswitch_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesLinearGradient(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1725
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1727
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1740
    :pswitch_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1737
    :pswitch_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1734
    :pswitch_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1731
    :pswitch_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMarker(Lcom/caverock/androidsvg/SVG$Marker;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 1616
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1618
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1619
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_7

    const/16 v3, 0x33

    if-eq v2, v3, :cond_6

    const/16 v3, 0x34

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1628
    :pswitch_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1629
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1630
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <marker> element. markerWidth cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string v2, "strokeWidth"

    .line 1638
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1639
    iput-boolean p0, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "userSpaceOnUse"

    .line 1640
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 1641
    iput-boolean v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    goto :goto_1

    .line 1643
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for attribute markerUnits"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1633
    :pswitch_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    .line 1634
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 1635
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <marker> element. markerHeight cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1625
    :cond_5
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1622
    :cond_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :cond_7
    const-string v2, "auto"

    .line 1647
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1648
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    goto :goto_1

    .line 1650
    :cond_8
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesMask(Lcom/caverock/androidsvg/SVG$Mask;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2105
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    .line 2107
    :cond_0
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2108
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x25

    const-string/jumbo v5, "userSpaceOnUse"

    const-string v6, "objectBoundingBox"

    if-eq v3, v4, :cond_5

    const/16 v4, 0x26

    if-eq v3, v4, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 2132
    :pswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2129
    :pswitch_1
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2135
    :pswitch_2
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2136
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2137
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <mask> element. width cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2111
    :cond_2
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2112
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2113
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2114
    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2116
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for attribute maskUnits"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2120
    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2121
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2122
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2123
    iput-object p0, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2125
    :cond_7
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for attribute maskContentUnits"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2140
    :cond_8
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2141
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2142
    :cond_9
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <mask> element. height cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1085
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1087
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xe

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1094
    :cond_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->pathLength:Ljava/lang/Float;

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    goto :goto_1

    .line 1096
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <path> element. pathLength cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1091
    :cond_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2006
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-void

    .line 2008
    :cond_0
    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2009
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v4

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x1b

    if-eq v4, v5, :cond_6

    const-string/jumbo v5, "userSpaceOnUse"

    const-string v6, "objectBoundingBox"

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 2036
    :pswitch_0
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_1

    .line 2033
    :pswitch_1
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_1

    .line 2039
    :pswitch_2
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 2040
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 2041
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <pattern> element. width cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2012
    :pswitch_3
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2013
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2014
    :cond_2
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2015
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2017
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for attribute patternUnits"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2030
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto :goto_1

    .line 2021
    :pswitch_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2022
    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2023
    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2024
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 2026
    :cond_5
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid value for attribute patternContentUnits"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2049
    :cond_6
    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/1999/xlink"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    .line 2051
    :cond_7
    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    goto :goto_1

    .line 2044
    :cond_8
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 2045
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    if-nez v3, :cond_9

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2046
    :cond_9
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <pattern> element. height cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 1341
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1343
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->points:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_5

    .line 1345
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 1346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 1349
    :goto_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1361
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    .line 1363
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, p0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 1364
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v1

    move v1, v5

    goto :goto_2

    .line 1350
    :cond_2
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    const-string v4, "Invalid <"

    if-eqz v3, :cond_4

    .line 1353
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1354
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1357
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 1358
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1356
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> points attribute. There should be an even number of coordinates."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1352
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> points attribute. Non-coordinate content found in list."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1773
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1775
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1776
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1785
    :cond_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 1786
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1787
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <radialGradient> element. r cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1793
    :cond_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1790
    :cond_4
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1782
    :cond_5
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1779
    :cond_6
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1129
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1131
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1132
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_6

    const/16 v2, 0x39

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1138
    :pswitch_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1135
    :pswitch_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1141
    :pswitch_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 1142
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1143
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <rect> element. width cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1156
    :cond_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    .line 1157
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 1158
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <rect> element. ry cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1151
    :cond_4
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    .line 1152
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1153
    :cond_5
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <rect> element. rx cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1146
    :cond_6
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1147
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_0

    .line 1148
    :cond_7
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <rect> element. height cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 868
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 870
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 877
    :pswitch_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 874
    :pswitch_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 880
    :pswitch_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 881
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 882
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <svg> element. width cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 890
    :cond_2
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->version:Ljava/lang/String;

    goto :goto_1

    .line 885
    :cond_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 886
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 887
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <svg> element. height cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1827
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1829
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1830
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1833
    :cond_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2569
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 2571
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2572
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2577
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x49

    if-eq v1, v2, :cond_3

    .line 2588
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v0, :cond_2

    .line 2589
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    .line 2590
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2580
    :cond_3
    invoke-static {p1, v0}, Lcom/caverock/androidsvg/SVGParser;->parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V

    goto :goto_1

    .line 2584
    :cond_4
    invoke-static {v0}, Lcom/caverock/androidsvg/CSSParser;->parseClassAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1499
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1501
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1502
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1505
    :cond_1
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1507
    :cond_2
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1961
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1963
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1964
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1972
    :cond_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 1967
    :cond_2
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 1969
    :cond_3
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1418
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 1420
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1421
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0x53

    if-eq v1, v2, :cond_2

    const/16 v2, 0x54

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 1427
    :cond_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->y:Ljava/util/List;

    goto :goto_1

    .line 1424
    :cond_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->x:Ljava/util/List;

    goto :goto_1

    .line 1433
    :cond_3
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dy:Ljava/util/List;

    goto :goto_1

    .line 1430
    :cond_4
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->dx:Ljava/util/List;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2879
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2881
    :cond_0
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->transform:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    if-ne v1, v2, :cond_1

    .line 2883
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 967
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 969
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_4

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 976
    :pswitch_0
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 973
    :pswitch_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 979
    :pswitch_2
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 980
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 981
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <use> element. width cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 989
    :cond_2
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/1999/xlink"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 991
    :cond_3
    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    goto :goto_1

    .line 984
    :cond_4
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 985
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 986
    :cond_5
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid <use> element. height cannot be negative"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2859
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lt p0, v0, :cond_0

    return-void

    .line 2861
    :cond_0
    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2862
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v1

    invoke-interface {p2, p0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x31

    if-eq v1, v2, :cond_2

    const/16 v2, 0x51

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 2865
    :cond_1
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 2868
    :cond_2
    invoke-static {p1, v0}, Lcom/caverock/androidsvg/SVGParser;->parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private parseCSSStyleSheet(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3973
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V

    .line 3974
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    return-void
.end method

.method private static parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "auto"

    .line 3536
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3538
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rect("

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3541
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3542
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3544
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    .line 3545
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3546
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    .line 3547
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3548
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    .line 3549
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3550
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v4

    .line 3552
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v5, 0x29

    .line 3553
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3556
    new-instance p0, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVG$CSSClipRect;-><init>(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    return-object p0

    .line 3554
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad rect() clip definition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3539
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid clip attribute shape. Only rect() is supported."

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3208
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x4

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    .line 3212
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    .line 3213
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v0

    .line 3214
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3215
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v1, v0, 0xf00

    and-int/lit16 v3, v0, 0xf0

    and-int/lit8 v0, v0, 0xf

    .line 3219
    new-instance v4, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v5, v1, 0x10

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v5

    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v1, v5

    shl-int/lit8 v2, v3, 0x4

    or-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-direct {v4, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object v4

    .line 3221
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad hex colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3226
    :catch_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3229
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "rgb("

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3231
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3232
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3234
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v2

    .line 3235
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3236
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v3

    .line 3237
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3238
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I

    move-result v4

    .line 3240
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v5, 0x29

    .line 3241
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3243
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    shl-int/lit8 v0, v2, 0x10

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3242
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad rgb() colour value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3247
    :cond_4
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object p0

    return-object p0
.end method

.method private static parseColourComponent(Lcom/caverock/androidsvg/SVGParser$TextScanner;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3254
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x25

    .line 3255
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eqz p0, :cond_2

    const/16 p0, 0x64

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v0, p0, :cond_1

    move v0, p0

    :cond_1
    :goto_0
    mul-int/2addr v0, v2

    .line 3258
    div-int/2addr v0, p0

    return v0

    :cond_2
    if-gez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    if-le v0, v2, :cond_4

    move v0, v2

    :cond_4
    :goto_1
    return v0
.end method

.method private static parseColourKeyword(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3269
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->colourKeywords:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3273
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    return-object p0

    .line 3271
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid colour keyword: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    .line 3193
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "currentColor"

    .line 3195
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3196
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object p0

    return-object p0

    .line 3198
    :cond_1
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object p0

    return-object p0
.end method

.method private static parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "nonzero"

    .line 3435
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3436
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object p0

    :cond_0
    const-string v0, "evenodd"

    .line 3437
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3438
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    return-object p0

    .line 3439
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid fill-rule property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3084
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 3092
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid float value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3085
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid float value (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3288
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "|caption|icon|menu|message-box|small-caption|status-bar|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3292
    :cond_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v1, p1

    move-object v2, v1

    :goto_0
    const/16 v3, 0x2f

    .line 3296
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v4

    .line 3297
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v4, :cond_a

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "normal"

    .line 3302
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 3305
    sget-object p1, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 3310
    sget-object v1, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const-string v2, "small-caps"

    .line 3315
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v4

    goto :goto_0

    .line 3324
    :cond_5
    :goto_1
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v2

    .line 3327
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3329
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3330
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3333
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 3334
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_2

    .line 3332
    :cond_6
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font style attribute: missing line-height"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3338
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->restOfText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3340
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 3341
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    if-nez p1, :cond_8

    const/16 p1, 0x190

    goto :goto_3

    .line 3342
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 3343
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    :cond_9
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 3344
    iget-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v2, 0x1e000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    return-void

    .line 3299
    :cond_a
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid font style attribute: missing font size and family"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseFontFamily(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3352
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3355
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x2c

    .line 3357
    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    .line 3361
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3362
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3363
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3364
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p0
.end method

.method private static parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3374
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontSizeKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3376
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3396
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontStyleKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eqz v0, :cond_0

    return-object v0

    .line 3398
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid font-style property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3385
    sget-object v0, Lcom/caverock/androidsvg/SVGParser;->fontWeightKeywords:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    .line 3387
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid font-weight property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    .line 3920
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "url("

    .line 3922
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    .line 3925
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3923
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attribute. Expected \"none\" or \"url()\" format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseGradiantOffset(Ljava/lang/String;)Ljava/lang/Float;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_4

    .line 1846
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 1849
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x25

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1855
    :goto_0
    :try_start_0
    invoke-virtual {p1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    div-float/2addr p0, v0

    :cond_1
    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-gez v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    cmpl-float v1, p0, v0

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, p0

    .line 1858
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1862
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid offset value in <stop>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 1845
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid offset value in <stop> (empty string)"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3021
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3023
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3024
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    add-int/lit8 v2, v0, -0x1

    .line 3025
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 3029
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    .line 3030
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x2

    .line 3032
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3034
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3036
    :catch_0
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length unit specifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 3041
    :try_start_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 3042
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    .line 3046
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid length value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3022
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid length value (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseLengthList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3056
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3059
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3061
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3064
    :goto_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 3066
    :cond_0
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3069
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3071
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    .line 3072
    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v3, p0, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3073
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto :goto_0

    .line 3068
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid length list value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->ahead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3057
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid length list (empty string)"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseLengthOrAuto(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1

    const-string v0, "auto"

    .line 3562
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3563
    new-instance p0, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    return-object p0

    .line 3565
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object p0

    return-object p0
.end method

.method private static parseOpacity(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3102
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    return p0
.end method

.method private static parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "visible"

    .line 3525
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "hidden"

    .line 3527
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "scroll"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3529
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid toverflow property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3528
    :cond_2
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3526
    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "url("

    .line 3172
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ")"

    .line 3174
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    .line 3178
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 3181
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3183
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object v1

    .line 3184
    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    return-object p0

    .line 3176
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " attribute. Unterminated url() reference"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3187
    :cond_2
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseColourSpecifer(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object p0

    return-object p0
.end method

.method private static parsePath(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$PathDefinition;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3586
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3596
    new-instance v9, Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>()V

    .line 3598
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v9

    .line 3601
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4d

    const/16 v10, 0x6d

    if-eq v1, v2, :cond_1

    if-eq v1, v10, :cond_1

    return-object v9

    :cond_1
    const/4 v11, 0x0

    move v12, v1

    move v1, v11

    move v2, v1

    move v3, v2

    move v4, v3

    move v13, v4

    move v14, v13

    .line 3608
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 v5, 0x6c

    const/high16 v6, 0x40000000    # 2.0f

    const-string v7, " path segment"

    const-string v8, "Bad path coords for "

    const-string v15, "SVGParser"

    sparse-switch v12, :sswitch_data_0

    return-object v9

    .line 3718
    :sswitch_0
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    move v1, v13

    move v2, v1

    move v3, v14

    :goto_1
    move v4, v3

    goto/16 :goto_4

    .line 3741
    :sswitch_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_3

    .line 3743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_3
    const/16 v5, 0x76

    if-ne v12, v5, :cond_4

    .line 3747
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3749
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v9, v1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3750
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :sswitch_2
    mul-float v5, v1, v6

    sub-float/2addr v5, v2

    .line 3783
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    mul-float/2addr v6, v3

    sub-float/2addr v6, v4

    .line 3784
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3785
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3786
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3787
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_5

    .line 3789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_5
    const/16 v7, 0x74

    if-ne v12, v7, :cond_6

    .line 3793
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3794
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3796
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v9, v1, v3, v7, v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3797
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3798
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3799
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3800
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto/16 :goto_4

    :sswitch_3
    mul-float v5, v1, v6

    sub-float/2addr v5, v2

    .line 3689
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    mul-float/2addr v6, v3

    sub-float/2addr v6, v4

    .line 3690
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3691
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3692
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3693
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3694
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3695
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v16

    .line 3696
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3697
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v17

    if-nez v17, :cond_7

    .line 3699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_7
    const/16 v7, 0x73

    if-ne v12, v7, :cond_8

    .line 3703
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 3704
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 3705
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3706
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_8
    move-object v8, v5

    move-object v15, v6

    .line 3708
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v1, v9

    invoke-virtual/range {v1 .. v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3709
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3710
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3711
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3712
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto/16 :goto_4

    .line 3756
    :sswitch_4
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3757
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3758
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 3759
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3760
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3761
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3762
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    if-nez v6, :cond_9

    .line 3764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_9
    const/16 v7, 0x71

    if-ne v12, v7, :cond_a

    .line 3768
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3769
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 3770
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 3771
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3773
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v9, v1, v3, v7, v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->quadTo(FFFF)V

    .line 3774
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3775
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3776
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3777
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto/16 :goto_4

    .line 3615
    :sswitch_5
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3616
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3617
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_b

    .line 3619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_b
    if-ne v12, v10, :cond_c

    .line 3623
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 3624
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 3625
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3627
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v9, v1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->moveTo(FF)V

    .line 3628
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3629
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-ne v12, v10, :cond_d

    goto :goto_2

    :cond_d
    const/16 v5, 0x4c

    :goto_2
    move v2, v1

    move v13, v2

    move v4, v3

    move v14, v4

    move v12, v5

    goto/16 :goto_4

    .line 3637
    :sswitch_6
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3638
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3639
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_e

    .line 3641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_e
    if-ne v12, v5, :cond_f

    .line 3645
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 3646
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3648
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v9, v1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3649
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3650
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_3
    move v2, v1

    goto/16 :goto_1

    .line 3726
    :sswitch_7
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_10

    .line 3728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_10
    const/16 v5, 0x68

    if-ne v12, v5, :cond_11

    .line 3732
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 3734
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v9, v1, v3}, Lcom/caverock/androidsvg/SVG$PathDefinition;->lineTo(FF)V

    .line 3735
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v2, v1

    goto/16 :goto_4

    .line 3656
    :sswitch_8
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3657
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3658
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 3659
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3660
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3661
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3662
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 3663
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3664
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v16

    .line 3665
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3666
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v17

    if-nez v17, :cond_12

    .line 3668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_12
    const/16 v7, 0x63

    if-ne v12, v7, :cond_13

    .line 3672
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 3673
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 3674
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 3675
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3676
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 3677
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_13
    move-object v8, v5

    move-object v15, v6

    .line 3679
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v1, v9

    invoke-virtual/range {v1 .. v7}, Lcom/caverock/androidsvg/SVG$PathDefinition;->cubicTo(FFFFFF)V

    .line 3680
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 3681
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3682
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3683
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto/16 :goto_4

    .line 3806
    :sswitch_9
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3807
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3808
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v4

    .line 3809
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3810
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v5

    .line 3811
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3812
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v6

    .line 3813
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3814
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v16

    .line 3815
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3816
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v17

    .line 3817
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3818
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v18

    if-eqz v18, :cond_17

    .line 3819
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpg-float v19, v19, v11

    if-ltz v19, :cond_17

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpg-float v19, v19, v11

    if-gez v19, :cond_14

    goto :goto_5

    :cond_14
    const/16 v7, 0x61

    if-ne v12, v7, :cond_15

    .line 3824
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    .line 3825
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    .line 3827
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object v1, v9

    invoke-virtual/range {v1 .. v8}, Lcom/caverock/androidsvg/SVG$PathDefinition;->arcTo(FFFZZFF)V

    .line 3828
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3829
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto/16 :goto_3

    .line 3836
    :goto_4
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3837
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v5

    if-eqz v5, :cond_16

    return-object v9

    .line 3841
    :cond_16
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->hasLetter()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3843
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto/16 :goto_0

    .line 3820
    :cond_17
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static parsePreserveAspectRatio(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3139
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3140
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3145
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defer"

    .line 3146
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3147
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3148
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3150
    :cond_0
    sget-object v2, Lcom/caverock/androidsvg/SVGParser;->aspectRatioKeywords:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 3151
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3153
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3154
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v2, "meet"

    .line 3155
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3156
    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_0

    :cond_1
    const-string v2, "slice"

    .line 3157
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3158
    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    goto :goto_0

    .line 3160
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid preserveAspectRatio definition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p1, 0x0

    .line 3163
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method private static parseRequiredFeatures(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3858
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3859
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 3861
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 3863
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/TR/SVG11/feature#"

    .line 3864
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x23

    .line 3865
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, "UNSUPPORTED"

    .line 3870
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3872
    :goto_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseRequiredFormats(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3905
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3906
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 3908
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 3910
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3911
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3912
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3472
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3475
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3478
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 3481
    :cond_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v3

    const-string v4, "Invalid stroke-dasharray. Dash segemnts cannot be negative: "

    if-nez v3, :cond_6

    .line 3484
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v3

    .line 3486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3487
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3488
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    cmpl-float p0, v3, p0

    if-nez p0, :cond_2

    return-object v2

    .line 3505
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface {v5, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/caverock/androidsvg/SVG$Length;

    return-object p0

    .line 3490
    :cond_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3491
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextLength()Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3494
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isNegative()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3496
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3497
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v1

    add-float/2addr v3, v1

    goto :goto_0

    .line 3495
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3493
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stroke-dasharray. Non-Length content found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3482
    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "butt"

    .line 3446
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3447
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object p0

    :cond_0
    const-string v0, "round"

    .line 3448
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3449
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object p0

    :cond_1
    const-string v0, "square"

    .line 3450
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3451
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    return-object p0

    .line 3452
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stroke-linecap property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "miter"

    .line 3459
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3460
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object p0

    :cond_0
    const-string v0, "round"

    .line 3461
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3462
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object p0

    :cond_1
    const-string v0, "bevel"

    .line 3463
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3464
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    return-object p0

    .line 3465
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stroke-linejoin property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2602
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    const-string v1, "/\\*.*?\\*/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/16 p1, 0x3a

    .line 2606
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 2607
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2608
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 2610
    :cond_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    const/16 p1, 0x3b

    .line 2611
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    .line 2614
    :cond_2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2615
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2617
    :cond_3
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez p1, :cond_4

    .line 2618
    new-instance p1, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p1}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 2619
    :cond_4
    iget-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {p1, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseSystemLanguage(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3882
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3883
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 3885
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 3887
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    .line 3888
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 3890
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3893
    :cond_1
    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v1, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 3894
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3895
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    goto :goto_0
.end method

.method private static parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "start"

    .line 3512
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3513
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object p0

    :cond_0
    const-string v0, "middle"

    .line 3514
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3515
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object p0

    :cond_1
    const-string v0, "end"

    .line 3516
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3517
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object p0

    .line 3518
    :cond_2
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text-anchor property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    .line 3407
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3408
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    :cond_0
    const-string v0, "underline"

    .line 3409
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3410
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    :cond_1
    const-string v0, "overline"

    .line 3411
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3412
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    :cond_2
    const-string v0, "line-through"

    .line 3413
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3414
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    :cond_3
    const-string v0, "blink"

    .line 3415
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3416
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object p0

    .line 3417
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text-decoration property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "ltr"

    .line 3424
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3425
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object p0

    :cond_0
    const-string v0, "rtl"

    .line 3426
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3427
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->RTL:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object p0

    .line 3428
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid direction property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTransformList(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2891
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 2893
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2896
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 2898
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFunction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v2, "matrix"

    .line 2903
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x29

    const-string v5, "Invalid transform list: "

    if-eqz v2, :cond_2

    .line 2905
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2906
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2907
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2908
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2909
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2910
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v6

    .line 2911
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2912
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v7

    .line 2913
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2914
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v8

    .line 2915
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2916
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v9

    .line 2917
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v9, :cond_1

    .line 2919
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2922
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/16 v5, 0x9

    new-array v5, v5, [F

    const/4 v10, 0x0

    .line 2923
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v5, v10

    const/4 v1, 0x1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v1

    const/4 v1, 0x2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v5, v1

    const/4 v1, 0x3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v5, v1

    const/4 v1, 0x4

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v5, v1

    const/4 v1, 0x5

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v5, v1

    const/4 v1, 0x6

    aput v3, v5, v1

    const/4 v1, 0x7

    aput v3, v5, v1

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2924
    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_1

    .line 2920
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v2, "translate"

    .line 2926
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2928
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2929
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2930
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2931
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v1, :cond_4

    .line 2933
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    .line 2937
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    .line 2939
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto/16 :goto_1

    .line 2934
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string v2, "scale"

    .line 2941
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2943
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2944
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2945
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2946
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v1, :cond_7

    .line 2948
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_6

    .line 2952
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    .line 2954
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_1

    .line 2949
    :cond_7
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string v2, "rotate"

    .line 2956
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2958
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2959
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2960
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 2961
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->possibleNextFloat()Ljava/lang/Float;

    move-result-object v3

    .line 2962
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v1, :cond_b

    .line 2964
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v2, :cond_9

    .line 2968
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    goto/16 :goto_1

    :cond_9
    if-eqz v3, :cond_a

    .line 2970
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    goto/16 :goto_1

    .line 2972
    :cond_a
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2965
    :cond_b
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    const-string v2, "skewX"

    .line 2975
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2977
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2978
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2979
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v1, :cond_d

    .line 2981
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2984
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1, v3}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto :goto_1

    .line 2982
    :cond_d
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    const-string v2, "skewY"

    .line 2986
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2988
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2989
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2990
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    if-eqz v1, :cond_f

    .line 2992
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2995
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v3, v1}, Landroid/graphics/Matrix;->preSkew(FF)Z

    goto :goto_1

    .line 2993
    :cond_f
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    if-nez v1, :cond_12

    .line 3001
    :goto_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_2
    return-object p0

    .line 3003
    :cond_11
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    goto/16 :goto_0

    .line 2998
    :cond_12
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid transform list fn: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2901
    :cond_13
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad transform function encountered in transform list: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "none"

    .line 3572
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3573
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object p0

    :cond_0
    const-string v0, "non-scaling-stroke"

    .line 3574
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3575
    sget-object p0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    return-object p0

    .line 3576
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid vector-effect property: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseViewBox(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 3112
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 3115
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object p0

    .line 3116
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3117
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 3118
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3119
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    .line 3120
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 3121
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v0

    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 3125
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 3127
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 3130
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v3

    .line 3128
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid viewBox. height cannot be negative"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3126
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid viewBox. width cannot be negative"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3124
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "Invalid viewBox definition - should have four numbers"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private path(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<path>"

    .line 1067
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Path;-><init>()V

    .line 1072
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1073
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1074
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1075
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1076
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1077
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1078
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPath(Lcom/caverock/androidsvg/SVG$Path;Lorg/xml/sax/Attributes;)V

    .line 1079
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1070
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private pattern(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<pattern>"

    .line 1987
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1989
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1991
    new-instance v0, Lcom/caverock/androidsvg/SVG$Pattern;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Pattern;-><init>()V

    .line 1992
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1993
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1994
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1995
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1996
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1997
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1998
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPattern(Lcom/caverock/androidsvg/SVG$Pattern;Lorg/xml/sax/Attributes;)V

    .line 1999
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2000
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1990
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private polygon(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polygon>"

    .line 1377
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1381
    new-instance v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Polygon;-><init>()V

    .line 1382
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1383
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1384
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1385
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1386
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1387
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polygon"

    .line 1388
    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1389
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1380
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private polyline(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<polyline>"

    .line 1320
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1322
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1324
    new-instance v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$PolyLine;-><init>()V

    .line 1325
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1326
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1327
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1328
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1329
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1330
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const-string v1, "polyline"

    .line 1331
    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesPolyLine(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 1332
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1323
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2628
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "inherit"

    .line 2631
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2634
    :cond_1
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v0

    invoke-static {p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    const/16 v1, 0x9

    if-eq v0, v1, :cond_10

    const/16 v1, 0x24

    if-eq v0, v1, :cond_f

    const/16 v1, 0x29

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_d

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3b

    const-string v2, "currentColor"

    if-eq v0, v1, :cond_a

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_9

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_7

    const/4 v1, -0x1

    const-string v3, "none"

    const/16 v4, 0x7c

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_4

    .line 2778
    :pswitch_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "|visible|hidden|collapse|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const-string/jumbo p1, "visible"

    .line 2780
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2781
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x2000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2779
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid value for \"visibility\" attribute: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2842
    :pswitch_1
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2843
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x400000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2833
    :pswitch_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2834
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_0

    .line 2836
    :cond_3
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2838
    :goto_0
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x200000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2662
    :pswitch_3
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2663
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2657
    :pswitch_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2658
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2677
    :pswitch_5
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2678
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2672
    :pswitch_6
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineJoin(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2673
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2667
    :pswitch_7
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeLineCap(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2668
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2690
    :pswitch_8
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseLength(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2691
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2682
    :pswitch_9
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 2683
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 2685
    :cond_4
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseStrokeDashArray(Ljava/lang/String;)[Lcom/caverock/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2686
    :goto_1
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    :pswitch_a
    const-string p1, "stroke"

    .line 2652
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2653
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2794
    :pswitch_b
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2795
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x8000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2785
    :pswitch_c
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2786
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_2

    .line 2788
    :cond_5
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2790
    :goto_2
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x4000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2766
    :pswitch_d
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2767
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x800000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2761
    :pswitch_e
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2762
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x400000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2756
    :pswitch_f
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2757
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x200000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2749
    :pswitch_10
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2750
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2751
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2752
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0xe00000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2724
    :pswitch_11
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontStyle(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2725
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x10000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2719
    :pswitch_12
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontWeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2720
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x8000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2714
    :pswitch_13
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontSize(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2715
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2709
    :pswitch_14
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFontFamily(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2710
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2705
    :pswitch_15
    invoke-static {p0, p2}, Lcom/caverock/androidsvg/SVGParser;->parseFont(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2647
    :pswitch_16
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2648
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2642
    :pswitch_17
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2643
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    :pswitch_18
    const-string p1, "fill"

    .line 2637
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parsePaintSpecifier(Ljava/lang/String;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2638
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2771
    :pswitch_19
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 2773
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2774
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x1000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2772
    :cond_6
    new-instance p0, Lorg/xml/sax/SAXException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid value for \"display\" attribute: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2729
    :cond_7
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDecoration(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2730
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x20000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2739
    :cond_8
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextAnchor(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2740
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x40000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2828
    :cond_9
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 2829
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x100000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2819
    :cond_a
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2820
    invoke-static {}, Lcom/caverock/androidsvg/SVG$CurrentColor;->getInstance()Lcom/caverock/androidsvg/SVG$CurrentColor;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto :goto_3

    .line 2822
    :cond_b
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2824
    :goto_3
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x80000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2847
    :cond_c
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseVectorEffect(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2848
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x800000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto/16 :goto_4

    .line 2744
    :cond_d
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOverflow(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2745
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    .line 2695
    :cond_e
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseOpacity(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 2696
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    .line 2814
    :cond_f
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2815
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x40000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    .line 2734
    :cond_10
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseTextDirection(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2735
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide v0, 0x1000000000L

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    .line 2700
    :cond_11
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseColour(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 2701
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    .line 2809
    :cond_12
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseFillRule(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2810
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x20000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    .line 2804
    :cond_13
    invoke-static {p2, p1}, Lcom/caverock/androidsvg/SVGParser;->parseFunctionalIRI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2805
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x10000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_4

    .line 2799
    :cond_14
    invoke-static {p2}, Lcom/caverock/androidsvg/SVGParser;->parseClip(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$CSSClipRect;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2800
    iget-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x59
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private radialGradient(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<radialGradient>"

    .line 1755
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1759
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;-><init>()V

    .line 1760
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1761
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1762
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1763
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1764
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesGradient(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    .line 1765
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRadialGradient(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lorg/xml/sax/Attributes;)V

    .line 1766
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1767
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1758
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private rect(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<rect>"

    .line 1111
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1115
    new-instance v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Rect;-><init>()V

    .line 1116
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1117
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1118
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1119
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1120
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1121
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1122
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesRect(Lcom/caverock/androidsvg/SVG$Rect;Lorg/xml/sax/Attributes;)V

    .line 1123
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 1114
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private solidColor(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<solidColor>"

    .line 1873
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1875
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1877
    new-instance v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SolidColor;-><init>()V

    .line 1878
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1879
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1880
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1881
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1882
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1883
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1876
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private stop(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<stop>"

    .line 1808
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1810
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 1812
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v0, :cond_0

    .line 1814
    new-instance v0, Lcom/caverock/androidsvg/SVG$Stop;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Stop;-><init>()V

    .line 1815
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1816
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1817
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1818
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1819
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStop(Lcom/caverock/androidsvg/SVG$Stop;Lorg/xml/sax/Attributes;)V

    .line 1820
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1821
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1813
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1811
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private style(Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "<style>"

    .line 3937
    invoke-direct {p0, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3939
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const-string v2, "all"

    move v3, v1

    .line 3946
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_1

    if-eqz v3, :cond_0

    .line 3962
    sget-object p1, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v2, p1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3963
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    goto :goto_1

    .line 3965
    :cond_0
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 3966
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    :goto_1
    return-void

    .line 3948
    :cond_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3949
    invoke-static {}, Lcom/caverock/androidsvg/SVGParser;->$SWITCH_TABLE$com$caverock$androidsvg$SVGParser$SVGAttr()[I

    move-result-object v5

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x27

    if-eq v5, v6, :cond_3

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "text/css"

    .line 3952
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3940
    :cond_4
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private svg(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<svg>"

    .line 847
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    new-instance v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Svg;-><init>()V

    .line 850
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 851
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 852
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 853
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 854
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 855
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 856
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesSVG(Lcom/caverock/androidsvg/SVG$Svg;Lorg/xml/sax/Attributes;)V

    .line 857
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez p1, :cond_0

    .line 858
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V

    goto :goto_0

    .line 860
    :cond_0
    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 862
    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void
.end method

.method private symbol(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<symbol>"

    .line 1575
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1579
    new-instance v0, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Symbol;-><init>()V

    .line 1580
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1581
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1582
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1583
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1584
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1585
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 1586
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1587
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1578
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private text(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<text>"

    .line 1399
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1403
    new-instance v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Text;-><init>()V

    .line 1404
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1405
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1406
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1407
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1408
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1409
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1410
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1411
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1412
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1402
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private textPath(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<textPath>"

    .line 1939
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1941
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1

    .line 1943
    new-instance v0, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TextPath;-><init>()V

    .line 1944
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1945
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1946
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1947
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1948
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1949
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPath(Lcom/caverock/androidsvg/SVG$TextPath;Lorg/xml/sax/Attributes;)V

    .line 1950
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1951
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1952
    iget-object p0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of p1, p0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz p1, :cond_0

    .line 1953
    check-cast p0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1955
    :cond_0
    check-cast p0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {p0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$TextPath;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    .line 1942
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tref(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tref>"

    .line 1476
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1480
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1482
    new-instance v0, Lcom/caverock/androidsvg/SVG$TRef;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TRef;-><init>()V

    .line 1483
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1484
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1485
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1486
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1487
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1488
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTRef(Lcom/caverock/androidsvg/SVG$TRef;Lorg/xml/sax/Attributes;)V

    .line 1489
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1490
    iget-object p0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of p1, p0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz p1, :cond_0

    .line 1491
    check-cast p0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1493
    :cond_0
    check-cast p0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {p0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$TRef;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    .line 1481
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1479
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tspan(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<tspan>"

    .line 1448
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_2

    .line 1452
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_1

    .line 1454
    new-instance v0, Lcom/caverock/androidsvg/SVG$TSpan;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$TSpan;-><init>()V

    .line 1455
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1456
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1457
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1458
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1459
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1460
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTextPosition(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 1461
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1462
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1463
    iget-object p0, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of p1, p0, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz p1, :cond_0

    .line 1464
    check-cast p0, Lcom/caverock/androidsvg/SVG$TextRoot;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    goto :goto_0

    .line 1466
    :cond_0
    check-cast p0, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {p0}, Lcom/caverock/androidsvg/SVG$TextChild;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$TSpan;->setTextRoot(Lcom/caverock/androidsvg/SVG$TextRoot;)V

    :goto_0
    return-void

    .line 1453
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1451
    :cond_2
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private use(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<use>"

    .line 948
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 952
    new-instance v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Use;-><init>()V

    .line 953
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 954
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 955
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 956
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 957
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 958
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 959
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesUse(Lcom/caverock/androidsvg/SVG$Use;Lorg/xml/sax/Attributes;)V

    .line 960
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 961
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 951
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private view(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<view>"

    .line 2066
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2068
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 2070
    new-instance v0, Lcom/caverock/androidsvg/SVG$View;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$View;-><init>()V

    .line 2071
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 2072
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2073
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 2074
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 2075
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesViewBox(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 2076
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 2077
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 2069
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private zwitch(Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<switch>"

    .line 1522
    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGParser;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1524
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_0

    .line 1526
    new-instance v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Switch;-><init>()V

    .line 1527
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    .line 1528
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 1529
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesCore(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1530
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesStyle(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 1531
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesTransform(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 1532
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseAttributesConditional(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 1533
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p1, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1534
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 1525
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "Invalid document. Root element must be <svg>"

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 691
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    return-void

    .line 694
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    .line 698
    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void

    .line 702
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 706
    :cond_3
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v1, :cond_7

    .line 714
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    .line 715
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    .line 716
    :cond_5
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 717
    :goto_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v1, :cond_6

    .line 719
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object p0, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    goto :goto_1

    .line 722
    :cond_6
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    new-instance v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$TextSequence;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 732
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    if-eqz v0, :cond_0

    return-void

    .line 737
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    if-eqz v0, :cond_2

    .line 739
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    .line 741
    :cond_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 810
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 751
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-boolean p3, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 754
    iget p3, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    if-nez p3, :cond_0

    .line 755
    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    return-void

    :cond_0
    const-string p3, "http://www.w3.org/2000/svg"

    .line 760
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "title"

    .line 764
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "desc"

    if-nez p3, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "style"

    .line 774
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 775
    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inStyleElement:Z

    .line 776
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->parseCSSStyleSheet(Ljava/lang/String;)V

    .line 777
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->styleElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_3
    const-string p1, "svg"

    .line 782
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "defs"

    .line 783
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "g"

    .line 784
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "use"

    .line 785
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "image"

    .line 786
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "text"

    .line 787
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "tspan"

    .line 788
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "switch"

    .line 789
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "symbol"

    .line 790
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "marker"

    .line 791
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "linearGradient"

    .line 792
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "radialGradient"

    .line 793
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "stop"

    .line 794
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "clipPath"

    .line 795
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "textPath"

    .line 796
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "pattern"

    .line 797
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "view"

    .line 798
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "mask"

    .line 799
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "solidColor"

    .line 800
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 801
    :cond_4
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->currentElement:Lcom/caverock/androidsvg/SVG$SvgContainer;

    :cond_5
    return-void

    .line 765
    :cond_6
    :goto_0
    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 766
    iget-object p2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 767
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object p2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 768
    :cond_7
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 769
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    iget-object p2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/SVG;->setDesc(Ljava/lang/String;)V

    .line 770
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->metadataElementContents:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method protected parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 569
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 572
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 574
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    .line 575
    invoke-interface {v0, v1, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-object p0

    :catch_0
    move-exception p0

    .line 588
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SVG parse error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 584
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "XML Parser problem"

    invoke-direct {p1, v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 580
    new-instance p1, Lcom/caverock/androidsvg/SVGParseException;

    const-string v0, "File error"

    invoke-direct {p1, v0, p0}, Lcom/caverock/androidsvg/SVGParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 602
    invoke-super {p0}, Lorg/xml/sax/ext/DefaultHandler2;->startDocument()V

    .line 603
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->svgDocument:Lcom/caverock/androidsvg/SVG;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 610
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 612
    iget-boolean p3, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 613
    iget p1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    return-void

    :cond_0
    const-string p3, "http://www.w3.org/2000/svg"

    .line 616
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "svg"

    .line 620
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 621
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->svg(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "g"

    .line 622
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 623
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_3
    const-string p1, "defs"

    .line 624
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 625
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->defs(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo p1, "use"

    .line 626
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 627
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->use(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_5
    const-string p1, "path"

    .line 628
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 629
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->path(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_6
    const-string p1, "rect"

    .line 630
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 631
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->rect(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_7
    const-string p1, "circle"

    .line 632
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 633
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->circle(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_8
    const-string p1, "ellipse"

    .line 634
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 635
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->ellipse(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_9
    const-string p1, "line"

    .line 636
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 637
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->line(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_a
    const-string p1, "polyline"

    .line 638
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 639
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polyline(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_b
    const-string p1, "polygon"

    .line 640
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 641
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->polygon(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_c
    const-string p1, "text"

    .line 642
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 643
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->text(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_d
    const-string p1, "tspan"

    .line 644
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 645
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tspan(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_e
    const-string p1, "tref"

    .line 646
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 647
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->tref(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_f
    const-string p1, "switch"

    .line 648
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 649
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->zwitch(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_10
    const-string p1, "symbol"

    .line 650
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 651
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->symbol(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_11
    const-string p1, "marker"

    .line 652
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 653
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->marker(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_12
    const-string p1, "linearGradient"

    .line 654
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 655
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->linearGradient(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_13
    const-string p1, "radialGradient"

    .line 656
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 657
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->radialGradient(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_14
    const-string p1, "stop"

    .line 658
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 659
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->stop(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_15
    const-string p1, "a"

    .line 660
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 661
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->g(Lorg/xml/sax/Attributes;)V

    goto/16 :goto_1

    :cond_16
    const-string p1, "title"

    .line 662
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    const-string p1, "desc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const-string p1, "clipPath"

    .line 665
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 666
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->clipPath(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_18
    const-string p1, "textPath"

    .line 667
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 668
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->textPath(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_19
    const-string p1, "pattern"

    .line 669
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 670
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->pattern(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_1a
    const-string p1, "image"

    .line 671
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 672
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->image(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_1b
    const-string/jumbo p1, "view"

    .line 673
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 674
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->view(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_1c
    const-string p1, "mask"

    .line 675
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 676
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->mask(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_1d
    const-string p1, "style"

    .line 677
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 678
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->style(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    :cond_1e
    const-string p1, "solidColor"

    .line 679
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 680
    invoke-direct {p0, p4}, Lcom/caverock/androidsvg/SVGParser;->solidColor(Lorg/xml/sax/Attributes;)V

    goto :goto_1

    .line 682
    :cond_1f
    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoring:Z

    .line 683
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->ignoreDepth:I

    goto :goto_1

    .line 663
    :cond_20
    :goto_0
    iput-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->inMetadataElement:Z

    .line 664
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGParser;->metadataTag:Ljava/lang/String;

    :goto_1
    return-void
.end method
