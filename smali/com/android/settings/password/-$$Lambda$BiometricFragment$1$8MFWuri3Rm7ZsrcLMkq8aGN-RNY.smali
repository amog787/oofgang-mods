.class public final synthetic Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/BiometricFragment$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/BiometricFragment$1;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iput p2, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;->f$1:I

    iput-object p3, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iget v1, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;->f$1:I

    iget-object p0, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$8MFWuri3Rm7ZsrcLMkq8aGN-RNY;->f$2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onAuthenticationError$0$BiometricFragment$1(ILjava/lang/CharSequence;)V

    return-void
.end method
