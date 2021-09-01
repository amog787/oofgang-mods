.class public Lcom/caverock/androidsvg/SVG;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Box;,
        Lcom/caverock/androidsvg/SVG$CSSClipRect;,
        Lcom/caverock/androidsvg/SVG$Circle;,
        Lcom/caverock/androidsvg/SVG$ClipPath;,
        Lcom/caverock/androidsvg/SVG$Colour;,
        Lcom/caverock/androidsvg/SVG$CurrentColor;,
        Lcom/caverock/androidsvg/SVG$Defs;,
        Lcom/caverock/androidsvg/SVG$Ellipse;,
        Lcom/caverock/androidsvg/SVG$GradientElement;,
        Lcom/caverock/androidsvg/SVG$GradientSpread;,
        Lcom/caverock/androidsvg/SVG$GraphicsElement;,
        Lcom/caverock/androidsvg/SVG$Group;,
        Lcom/caverock/androidsvg/SVG$HasTransform;,
        Lcom/caverock/androidsvg/SVG$Image;,
        Lcom/caverock/androidsvg/SVG$Length;,
        Lcom/caverock/androidsvg/SVG$Line;,
        Lcom/caverock/androidsvg/SVG$Marker;,
        Lcom/caverock/androidsvg/SVG$Mask;,
        Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;,
        Lcom/caverock/androidsvg/SVG$PaintReference;,
        Lcom/caverock/androidsvg/SVG$Path;,
        Lcom/caverock/androidsvg/SVG$PathDefinition;,
        Lcom/caverock/androidsvg/SVG$PathInterface;,
        Lcom/caverock/androidsvg/SVG$Pattern;,
        Lcom/caverock/androidsvg/SVG$PolyLine;,
        Lcom/caverock/androidsvg/SVG$Polygon;,
        Lcom/caverock/androidsvg/SVG$Rect;,
        Lcom/caverock/androidsvg/SVG$SolidColor;,
        Lcom/caverock/androidsvg/SVG$Stop;,
        Lcom/caverock/androidsvg/SVG$Style;,
        Lcom/caverock/androidsvg/SVG$Svg;,
        Lcom/caverock/androidsvg/SVG$SvgConditional;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;,
        Lcom/caverock/androidsvg/SVG$SvgConditionalElement;,
        Lcom/caverock/androidsvg/SVG$SvgContainer;,
        Lcom/caverock/androidsvg/SVG$SvgElement;,
        Lcom/caverock/androidsvg/SVG$SvgElementBase;,
        Lcom/caverock/androidsvg/SVG$SvgLinearGradient;,
        Lcom/caverock/androidsvg/SVG$SvgObject;,
        Lcom/caverock/androidsvg/SVG$SvgPaint;,
        Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;,
        Lcom/caverock/androidsvg/SVG$SvgRadialGradient;,
        Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;,
        Lcom/caverock/androidsvg/SVG$Switch;,
        Lcom/caverock/androidsvg/SVG$Symbol;,
        Lcom/caverock/androidsvg/SVG$TRef;,
        Lcom/caverock/androidsvg/SVG$TSpan;,
        Lcom/caverock/androidsvg/SVG$Text;,
        Lcom/caverock/androidsvg/SVG$TextChild;,
        Lcom/caverock/androidsvg/SVG$TextContainer;,
        Lcom/caverock/androidsvg/SVG$TextPath;,
        Lcom/caverock/androidsvg/SVG$TextPositionedContainer;,
        Lcom/caverock/androidsvg/SVG$TextRoot;,
        Lcom/caverock/androidsvg/SVG$TextSequence;,
        Lcom/caverock/androidsvg/SVG$Unit;,
        Lcom/caverock/androidsvg/SVG$Use;,
        Lcom/caverock/androidsvg/SVG$View;
    }
.end annotation


# static fields
.field private static final EMPTY_CHILD_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field private fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

.field private renderDPI:F

.field private rootElement:Lcom/caverock/androidsvg/SVG$Svg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG;->EMPTY_CHILD_LIST:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    .line 97
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    const/high16 v0, 0x42c00000    # 96.0f

    .line 100
    iput v0, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    .line 103
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1

    .line 87
    sget-object v0, Lcom/caverock/androidsvg/SVG;->EMPTY_CHILD_LIST:Ljava/util/List;

    return-object v0
.end method

.method private getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .locals 3

    .line 2031
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 2032
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2034
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 2036
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v1, :cond_3

    goto :goto_0

    .line 2038
    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 2039
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 2041
    :cond_4
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v1, :cond_1

    .line 2043
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0
.end method

.method public static getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 188
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 189
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p1

    .line 190
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public static getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 143
    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/SVGParseException;
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/caverock/androidsvg/SVGParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVGParser;-><init>()V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->parse(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    return-void
.end method

.method protected getCSSRules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .line 834
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->getRules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDocumentViewBox()Landroid/graphics/RectF;
    .locals 1

    .line 678
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz p0, :cond_1

    .line 681
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$Box;->toRectF()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    .line 679
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SVG document is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2022
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    return-object p0

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVG;->getElementById(Lcom/caverock/androidsvg/SVG$SvgContainer;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object p0

    return-object p0
.end method

.method protected getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .locals 0

    .line 1878
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->fileResolver:Lcom/caverock/androidsvg/SVGExternalFileResolver;

    return-object p0
.end method

.method protected getRootElement()Lcom/caverock/androidsvg/SVG$Svg;
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    return-object p0
.end method

.method protected hasCSSRules()Z
    .locals 0

    .line 840
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->cssRules:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVG;->renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method public renderToCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 366
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1, v2, p2}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object p2

    goto :goto_0

    .line 368
    :cond_0
    new-instance p2, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 371
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget v1, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {v0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 373
    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    return-void
.end method

.method public renderToPicture()Landroid/graphics/Picture;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    .line 253
    iget v1, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_0

    .line 258
    iget v1, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v1, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v1, v2

    goto :goto_0

    .line 260
    :cond_0
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_1

    .line 262
    iget v2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    float-to-double v2, v0

    .line 267
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x200

    .line 271
    invoke-virtual {p0, v0, v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture(II)Landroid/graphics/Picture;

    move-result-object p0

    return-object p0
.end method

.method public renderToPicture(II)Landroid/graphics/Picture;
    .locals 4

    .line 285
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 286
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 287
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 289
    new-instance p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget p2, p0, Lcom/caverock/androidsvg/SVG;->renderDPI:F

    invoke-direct {p1, v1, v2, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {p1, p0, p2, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V

    .line 293
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    return-object v0
.end method

.method protected resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 785
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method protected setDesc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDocumentPreserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz p0, :cond_0

    .line 702
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void

    .line 700
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SVG document is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setRootElement(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG;->rootElement:Lcom/caverock/androidsvg/SVG$Svg;

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
