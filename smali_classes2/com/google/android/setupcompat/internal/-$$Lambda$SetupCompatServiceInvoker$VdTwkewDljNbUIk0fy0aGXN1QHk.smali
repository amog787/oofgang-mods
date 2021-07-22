.class public final synthetic Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iput-object p2, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;->f$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/-$$Lambda$SetupCompatServiceInvoker$VdTwkewDljNbUIk0fy0aGXN1QHk;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->lambda$bindBack$1$SetupCompatServiceInvoker(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
