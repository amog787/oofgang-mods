.class final Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;
.super Ljava/lang/Object;
.source "PaletteListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/PaletteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColorAttributes"
.end annotation


# instance fields
.field private final mColorName:Ljava/lang/String;

.field private final mGradientColors:[I

.field private final mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mGradientOffsets:[F

.field final synthetic this$0:Lcom/android/settings/accessibility/PaletteListView;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/PaletteListView;Ljava/lang/String;IFLandroid/graphics/drawable/GradientDrawable;)V
    .locals 4

    .line 285
    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->this$0:Lcom/android/settings/accessibility/PaletteListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 277
    iget-object v1, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->this$0:Lcom/android/settings/accessibility/PaletteListView;

    .line 278
    invoke-static {v1}, Lcom/android/settings/accessibility/PaletteListView;->access$300(Lcom/android/settings/accessibility/PaletteListView;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->this$0:Lcom/android/settings/accessibility/PaletteListView;

    invoke-static {v1}, Lcom/android/settings/accessibility/PaletteListView;->access$300(Lcom/android/settings/accessibility/PaletteListView;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->mGradientColors:[I

    new-array p1, p1, [F

    .line 280
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->mGradientOffsets:[F

    aput p3, v0, v1

    aput p4, p1, v3

    .line 288
    invoke-virtual {p5, v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    .line 289
    iput-object p2, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->mColorName:Ljava/lang/String;

    .line 290
    iput-object p5, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getColorName()Ljava/lang/String;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->mColorName:Ljava/lang/String;

    return-object p0
.end method

.method public getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method
