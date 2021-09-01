.class Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;
.super Ljava/lang/Object;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Color"
.end annotation


# instance fields
.field private mColor:I

.field private mDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mLabel:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mLabel:Ljava/lang/String;

    .line 234
    iput p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mColor:I

    .line 235
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 236
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 237
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    int-to-float p3, p4

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)I
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->getColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)Landroid/graphics/drawable/ShapeDrawable;
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->getDrawable()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)Ljava/lang/String;
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getColor()I
    .locals 0

    .line 248
    iget p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mColor:I

    return p0
.end method

.method private getDrawable()Landroid/graphics/drawable/ShapeDrawable;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mDrawable:Landroid/graphics/drawable/ShapeDrawable;

    return-object p0
.end method

.method private getLabel()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->mLabel:Ljava/lang/String;

    return-object p0
.end method
