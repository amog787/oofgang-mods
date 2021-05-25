.class Lcom/android/server/wm/OpScreenModeService$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/wm/OpScreenModeService;

.field sis:I

.field tsu:[I

.field you:I

.field zta:Landroid/view/Display$Mode;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;Landroid/view/Display$Mode;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->rtg:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->you:I

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->sis:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    iput-object p2, p0, Lcom/android/server/wm/OpScreenModeService$sis;->zta:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    const/16 v2, 0x1c2

    const/16 v3, 0x258

    const/4 v4, 0x1

    const/16 v5, 0x5a0

    if-ne v1, v5, :cond_2

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->sis:I

    iput v0, p1, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x5020024

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x5020027

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    const/16 v5, 0x438

    if-eq v1, v5, :cond_3

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    const/16 v5, 0x2d0

    if-ne v1, v5, :cond_8

    :cond_3
    iput v4, p0, Lcom/android/server/wm/OpScreenModeService$sis;->sis:I

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v1

    if-eq v1, v3, :cond_7

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v1

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$300(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "guacamole"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$300(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hotdog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/server/wm/OpScreenModeService;->DPI_FHD:[I

    aget v1, v1, v4

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v2

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x5020025

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto :goto_3

    :cond_6
    :goto_1
    sget-object p1, Lcom/android/server/wm/OpScreenModeService;->DPI_FHD:[I

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x5020026

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    :cond_8
    :goto_3
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, v1, v5

    if-gez p1, :cond_9

    iput v4, p0, Lcom/android/server/wm/OpScreenModeService$sis;->you:I

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v1, p1

    cmpg-double p1, v1, v5

    if-ltz p1, :cond_a

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/high16 p2, 0x42f00000    # 120.0f

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v5

    if-gez p1, :cond_b

    :cond_a
    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->you:I

    :cond_b
    :goto_4
    return-void
.end method
