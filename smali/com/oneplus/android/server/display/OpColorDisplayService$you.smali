.class Lcom/oneplus/android/server/display/OpColorDisplayService$you;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/display/OpColorDisplayService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "screen_color_mode_advanced_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "oem_black_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "screen_color_mode_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "colour_cast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "oem_screen_better_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v3

    :cond_1
    :goto_1
    if-eqz p2, :cond_7

    if-eq p2, v5, :cond_7

    if-eq p2, v3, :cond_6

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$600(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$702(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$702(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$402(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p1, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$402(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)Z

    :goto_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$500(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$100()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/tsu;->hmo()V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->zta:Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-static {p0, v5}, Lcom/oneplus/android/server/display/OpColorDisplayService;->access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V

    :cond_8
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x563eaf93 -> :sswitch_4
        0xcf535d2 -> :sswitch_3
        0xf66fb82 -> :sswitch_2
        0x2eb945cb -> :sswitch_1
        0x51621985 -> :sswitch_0
    .end sparse-switch
.end method
