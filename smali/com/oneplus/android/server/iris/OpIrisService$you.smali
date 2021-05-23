.class Lcom/oneplus/android/server/iris/OpIrisService$you;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/iris/OpIrisService;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/iris/OpIrisService;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/iris/OpIrisService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange setting : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpIrisService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "op_iris_video_memc_extreme_status"

    const-string v2, "op_iris_video_sdr2hdr_status"

    const-string v3, "op_iris_game_memc_status"

    const-string v4, "op_iris_video_memc_status"

    const-string v5, "accessibility_display_inversion_enabled"

    const-string v6, "op_iris_game_sdr2hdr_status"

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "screen_color_mode_advanced_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x6

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "screen_color_mode_settings_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v8

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v7

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x7

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    :cond_1
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/OpIrisService;->access$000(Lcom/oneplus/android/server/iris/OpIrisService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/OpIrisService;->access$100(Lcom/oneplus/android/server/iris/OpIrisService;)I

    move-result p2

    invoke-static {p1, v5, v8, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    if-ne p1, v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    invoke-virtual {p0, v7}, Lcom/oneplus/android/server/iris/cno;->bvj(Z)V

    goto/16 :goto_8

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$300(Lcom/oneplus/android/server/iris/OpIrisService;)V

    goto/16 :goto_8

    :pswitch_2
    iget-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/OpIrisService;->access$000(Lcom/oneplus/android/server/iris/OpIrisService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/OpIrisService;->access$100(Lcom/oneplus/android/server/iris/OpIrisService;)I

    move-result p2

    invoke-static {p1, v1, v8, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    if-ne p1, v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    :goto_3
    invoke-virtual {p0, v7}, Lcom/oneplus/android/server/iris/cno;->oxb(Z)V

    goto/16 :goto_8

    :pswitch_3
    iget-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/OpIrisService;->access$000(Lcom/oneplus/android/server/iris/OpIrisService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/OpIrisService;->access$100(Lcom/oneplus/android/server/iris/OpIrisService;)I

    move-result p2

    invoke-static {p1, v2, v8, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    if-ne p1, v7, :cond_4

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    invoke-virtual {p0, v7}, Lcom/oneplus/android/server/iris/cno;->ear(Z)V

    goto :goto_8

    :pswitch_4
    iget-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/OpIrisService;->access$000(Lcom/oneplus/android/server/iris/OpIrisService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/OpIrisService;->access$100(Lcom/oneplus/android/server/iris/OpIrisService;)I

    move-result p2

    invoke-static {p1, v6, v8, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    if-ne p1, v7, :cond_5

    goto :goto_5

    :cond_5
    move v7, v8

    :goto_5
    invoke-virtual {p0, v7}, Lcom/oneplus/android/server/iris/cno;->gwm(Z)V

    goto :goto_8

    :pswitch_5
    iget-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/OpIrisService;->access$000(Lcom/oneplus/android/server/iris/OpIrisService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/OpIrisService;->access$100(Lcom/oneplus/android/server/iris/OpIrisService;)I

    move-result p2

    invoke-static {p1, v4, v8, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    if-ne p1, v7, :cond_6

    goto :goto_6

    :cond_6
    move v7, v8

    :goto_6
    invoke-virtual {p0, v7}, Lcom/oneplus/android/server/iris/cno;->cjf(Z)V

    goto :goto_8

    :pswitch_6
    iget-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p1}, Lcom/oneplus/android/server/iris/OpIrisService;->access$000(Lcom/oneplus/android/server/iris/OpIrisService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p2}, Lcom/oneplus/android/server/iris/OpIrisService;->access$100(Lcom/oneplus/android/server/iris/OpIrisService;)I

    move-result p2

    invoke-static {p1, v3, v8, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService$you;->zta:Lcom/oneplus/android/server/iris/OpIrisService;

    invoke-static {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;

    move-result-object p0

    if-ne p1, v7, :cond_7

    goto :goto_7

    :cond_7
    move v7, v8

    :goto_7
    invoke-virtual {p0, v7}, Lcom/oneplus/android/server/iris/cno;->ibl(Z)V

    :cond_8
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x32b44d75 -> :sswitch_7
        -0x20db1ad9 -> :sswitch_6
        -0x1711e2af -> :sswitch_5
        -0x40e11dc -> :sswitch_4
        0x441983e -> :sswitch_3
        0xf66fb82 -> :sswitch_2
        0x375c0544 -> :sswitch_1
        0x51621985 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
