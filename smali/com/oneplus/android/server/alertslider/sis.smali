.class public Lcom/oneplus/android/server/alertslider/sis;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final cno:I = -0x1

.field public static final rtg:I = 0x2

.field private static final sis:Ljava/lang/String; = "AlertSliderBase"

.field public static final ssp:I = 0x3

.field public static final tsu:I = 0x1


# instance fields
.field private you:Landroid/content/Context;

.field private zta:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/sis;->you:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bio()V
    .locals 0

    return-void
.end method

.method public cno(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/alertslider/sis;->igw(I)V

    :cond_0
    return-void
.end method

.method protected igw(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, "AlertSliderBase"

    const-string p1, "invalid switchState"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/sis;->kth()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/sis;->bio()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/sis;->wtn()V

    :goto_0
    iput p1, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    return-void
.end method

.method protected kth()V
    .locals 0

    return-void
.end method

.method public rtg()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sis()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ssp()V
    .locals 2

    const-string v0, "AlertSliderBase"

    const-string v1, "[reset]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/alertslider/sis;->you(I)V

    return-void
.end method

.method public tsu()Z
    .locals 1

    iget p0, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected wtn()V
    .locals 0

    return-void
.end method

.method public you(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/alertslider/sis;->igw(I)V

    return-void
.end method

.method public zta()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/alertslider/sis;->zta:I

    return p0
.end method
