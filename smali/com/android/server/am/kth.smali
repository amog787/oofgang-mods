.class public final synthetic Lcom/android/server/am/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/am/m;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/kth;->zta:Lcom/android/server/am/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/kth;->zta:Lcom/android/server/am/m;

    invoke-virtual {p0}, Lcom/android/server/am/m;->gck()V

    return-void
.end method
