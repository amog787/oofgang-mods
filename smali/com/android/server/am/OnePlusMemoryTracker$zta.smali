.class Lcom/android/server/am/OnePlusMemoryTracker$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusMemoryTracker;->doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/OnePlusMemoryTracker;

.field final synthetic zta:Lcom/android/server/am/OnePlusMemoryTracker$tsu;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->you:Lcom/android/server/am/OnePlusMemoryTracker;

    iput-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->zta:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->you:Lcom/android/server/am/OnePlusMemoryTracker;

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->zta:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$100(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OPMT"

    const-string v2, "Exception in doWriteLogToDropbox :"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$zta;->you:Lcom/android/server/am/OnePlusMemoryTracker;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$202(Lcom/android/server/am/OnePlusMemoryTracker;Z)Z

    return-void
.end method
