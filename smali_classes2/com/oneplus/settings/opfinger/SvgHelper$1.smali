.class Lcom/oneplus/settings/opfinger/SvgHelper$1;
.super Landroid/graphics/Canvas;
.source "SvgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/SvgHelper;->getPathsForViewport(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/SvgHelper;II)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    iput p2, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$width:I

    iput p3, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$height:I

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 66
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 2

    .line 80
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 86
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    invoke-static {p1}, Lcom/oneplus/settings/opfinger/SvgHelper;->access$100(Lcom/oneplus/settings/opfinger/SvgHelper;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;

    new-instance v1, Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->this$0:Lcom/oneplus/settings/opfinger/SvgHelper;

    invoke-static {p0}, Lcom/oneplus/settings/opfinger/SvgHelper;->access$000(Lcom/oneplus/settings/opfinger/SvgHelper;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-direct {v0, p2, v1}, Lcom/oneplus/settings/opfinger/SvgHelper$SvgPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHeight()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/oneplus/settings/opfinger/SvgHelper$1;->val$width:I

    return p0
.end method
