.class public final synthetic Lcom/android/server/wm/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/you;->zta:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/you;->zta:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method
