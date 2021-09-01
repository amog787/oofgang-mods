.class public Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;
.super Ljava/lang/Object;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/SvgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SvgPath"
.end annotation


# static fields
.field private static final sMaxClip:Landroid/graphics/Region;

.field private static final sRegion:Landroid/graphics/Region;


# instance fields
.field final length:F

.field final measure:Landroid/graphics/PathMeasure;

.field final paint:Landroid/graphics/Paint;

.field final renderPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->sRegion:Landroid/graphics/Region;

    .line 40
    new-instance v0, Landroid/graphics/Region;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Region;-><init>(IIII)V

    sput-object v0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->sMaxClip:Landroid/graphics/Region;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->renderPath:Landroid/graphics/Path;

    .line 52
    iput-object p2, p0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->paint:Landroid/graphics/Paint;

    .line 54
    new-instance p2, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->measure:Landroid/graphics/PathMeasure;

    .line 55
    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p2

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->length:F

    .line 57
    sget-object p0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->sRegion:Landroid/graphics/Region;

    sget-object p2, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->sMaxClip:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 58
    sget-object p0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;->sRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    return-void
.end method
