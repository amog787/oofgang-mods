.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppUtils$oTeAENAZBPIju7SIYfaPlvY-AJ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppUtils$oTeAENAZBPIju7SIYfaPlvY-AJ0;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppUtils$oTeAENAZBPIju7SIYfaPlvY-AJ0;->f$0:Landroid/os/Handler;

    invoke-static {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->lambda$showLockScreen$0(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
