.class Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;
.super Landroid/os/Handler;
.source "QuickPayLottieAnimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 38
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-static {p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->access$000(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    :goto_0
    return-void
.end method
