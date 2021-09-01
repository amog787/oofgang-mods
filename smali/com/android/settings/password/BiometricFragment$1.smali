.class Lcom/android/settings/password/BiometricFragment$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAuthenticationError$0(ILjava/lang/CharSequence;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationFailed$2()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method private synthetic lambda$onAuthenticationSucceeded$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method private synthetic lambda$onSystemEvent$3(I)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onSystemEvent(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAuthenticationError$0$BiometricFragment$1(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onAuthenticationError$0(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$onAuthenticationFailed$2$BiometricFragment$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onAuthenticationFailed$2()V

    return-void
.end method

.method public synthetic lambda$onAuthenticationSucceeded$1$BiometricFragment$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onAuthenticationSucceeded$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method

.method public synthetic lambda$onSystemEvent$3$BiometricFragment$1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onSystemEvent$3(I)V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/BiometricFragment;->access$002(Lcom/android/settings/password/BiometricFragment;Z)Z

    .line 59
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;-><init>(Lcom/android/settings/password/BiometricFragment$1;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$200(Lcom/android/settings/password/BiometricFragment;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$di5vVbjcZSKYBrdj3zA0to77iaU;

    invoke-direct {v1, p0}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$di5vVbjcZSKYBrdj3zA0to77iaU;-><init>(Lcom/android/settings/password/BiometricFragment$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/password/BiometricFragment;->access$002(Lcom/android/settings/password/BiometricFragment;Z)Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$VRGQlQZZYr0QoD3OQpS9MEP5Z08;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$VRGQlQZZYr0QoD3OQpS9MEP5Z08;-><init>(Lcom/android/settings/password/BiometricFragment$1;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->access$200(Lcom/android/settings/password/BiometricFragment;)V

    return-void
.end method

.method public onSystemEvent(I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$1;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {v0}, Lcom/android/settings/password/BiometricFragment;->access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$CofdZU9-up-q-DBesLU_tCxlebk;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$CofdZU9-up-q-DBesLU_tCxlebk;-><init>(Lcom/android/settings/password/BiometricFragment$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
