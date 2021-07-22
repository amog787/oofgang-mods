.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iput-boolean p2, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iget-boolean p0, p0, Lcom/android/settings/datausage/-$$Lambda$DataSaverBackend$1$1851XOwRm2qYDEpp81v4WIVwIHs;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$1;->lambda$onRestrictBackgroundChanged$1$DataSaverBackend$1(Z)V

    return-void
.end method
