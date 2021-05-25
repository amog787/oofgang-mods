.class public final synthetic Lcom/android/server/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/gwm;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/gwm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/you;->zta:Lcom/android/server/gwm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/you;->zta:Lcom/android/server/gwm;

    invoke-virtual {p0}, Lcom/android/server/gwm;->obl()V

    return-void
.end method
