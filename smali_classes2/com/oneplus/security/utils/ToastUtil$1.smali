.class Lcom/oneplus/security/utils/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/security/utils/ToastUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 19
    invoke-static {}, Lcom/oneplus/security/utils/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    const/4 p0, 0x0

    .line 20
    invoke-static {p0}, Lcom/oneplus/security/utils/ToastUtil;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    return-void
.end method
