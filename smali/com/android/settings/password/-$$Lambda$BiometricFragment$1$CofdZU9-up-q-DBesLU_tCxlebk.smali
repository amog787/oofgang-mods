.class public final synthetic Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$CofdZU9-up-q-DBesLU_tCxlebk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/BiometricFragment$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/BiometricFragment$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$CofdZU9-up-q-DBesLU_tCxlebk;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iput p2, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$CofdZU9-up-q-DBesLU_tCxlebk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$CofdZU9-up-q-DBesLU_tCxlebk;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iget p0, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$CofdZU9-up-q-DBesLU_tCxlebk;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onSystemEvent$3$BiometricFragment$1(I)V

    return-void
.end method
