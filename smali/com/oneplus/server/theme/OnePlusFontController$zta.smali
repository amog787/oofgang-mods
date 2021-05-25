.class Lcom/oneplus/server/theme/OnePlusFontController$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/theme/OnePlusFontController;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/theme/OnePlusFontController;


# direct methods
.method constructor <init>(Lcom/oneplus/server/theme/OnePlusFontController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/theme/OnePlusFontController$zta;->zta:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    const-string p0, "No Matched Case"

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->logd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/oneplus/server/theme/OnePlusFontController$zta;->zta:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->access$200(Lcom/oneplus/server/theme/OnePlusFontController;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/oneplus/server/theme/OnePlusFontController$zta;->zta:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->access$100(Lcom/oneplus/server/theme/OnePlusFontController;)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/oneplus/server/theme/OnePlusFontController$zta;->zta:Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-static {p0}, Lcom/oneplus/server/theme/OnePlusFontController;->access$000(Lcom/oneplus/server/theme/OnePlusFontController;)V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x932ec
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
