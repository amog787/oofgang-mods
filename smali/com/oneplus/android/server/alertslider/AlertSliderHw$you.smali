.class final Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/alertslider/AlertSliderHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field private rtg:I

.field private final sis:I

.field final synthetic ssp:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

.field private final tsu:I

.field private final you:I

.field private final zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->ssp:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "soc:tri_state_key"

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->zta:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->you:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->sis:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->tsu:I

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->you()V

    return-void
.end method

.method private you()V
    .locals 9

    const-string v0, ""

    const-string v1, "AlertSliderHw"

    const/16 v2, 0x400

    new-array v3, v2, [C

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_2

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "/sys/class/extcon/extcon%d/name"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    move v6, v4

    :goto_1
    invoke-static {v1, v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->zta:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v5, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get alerslider path: /sys/class/extcon/extcon"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->zta()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/extcon/extcon"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/name != soc:tri_state_key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public rtg()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "/sys/class/extcon/extcon%d/"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->zta:Ljava/lang/String;

    return-object p0
.end method

.method public tsu()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->zta:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "/devices/platform/soc/%s/extcon/extcon%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta()Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->rtg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method
