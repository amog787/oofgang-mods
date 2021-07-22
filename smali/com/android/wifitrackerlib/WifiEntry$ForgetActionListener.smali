.class public Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;
.super Ljava/lang/Object;
.source "WifiEntry.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/WifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ForgetActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method protected constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFailure$1()V
    .locals 1

    .line 767
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForgetCallback:Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 768
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;->onForgetResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 1

    .line 758
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForgetCallback:Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 759
    invoke-interface {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;->onForgetResult(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onFailure$1$WifiEntry$ForgetActionListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->lambda$onFailure$1()V

    return-void
.end method

.method public synthetic lambda$onSuccess$0$WifiEntry$ForgetActionListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->lambda$onSuccess$0()V

    return-void
.end method

.method public onFailure(I)V
    .locals 1

    .line 766
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$ForgetActionListener$B2flgYn-ZZJGOI7c8yNLpXNeAXg;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$ForgetActionListener$B2flgYn-ZZJGOI7c8yNLpXNeAXg;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->this$0:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$ForgetActionListener$SZ0IZPl_pQYHOFIlfk05jMAoIag;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$ForgetActionListener$SZ0IZPl_pQYHOFIlfk05jMAoIag;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
