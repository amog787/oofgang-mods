.class public Lcom/oneplus/security/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mToast:Landroid/widget/Toast;

.field private static r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/oneplus/security/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v0, Lcom/oneplus/security/utils/ToastUtil$1;

    invoke-direct {v0}, Lcom/oneplus/security/utils/ToastUtil$1;-><init>()V

    sput-object v0, Lcom/oneplus/security/utils/ToastUtil;->r:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 13
    sget-object v0, Lcom/oneplus/security/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 13
    sput-object p0, Lcom/oneplus/security/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static showLongToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xbb8

    .line 40
    invoke-static {p0, p1, v0}, Lcom/oneplus/security/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showShortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 30
    invoke-static {p0, p1, v0}, Lcom/oneplus/security/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 51
    sget-object v0, Lcom/oneplus/security/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/security/utils/ToastUtil;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    sget-object v0, Lcom/oneplus/security/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 53
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/oneplus/security/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    sget-object p0, Lcom/oneplus/security/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/oneplus/security/utils/ToastUtil;->r:Ljava/lang/Runnable;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    sget-object p0, Lcom/oneplus/security/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
