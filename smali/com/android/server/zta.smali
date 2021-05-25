.class public final synthetic Lcom/android/server/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/gwm$ssp;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/gwm$ssp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/zta;->zta:Lcom/android/server/gwm$ssp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/zta;->zta:Lcom/android/server/gwm$ssp;

    invoke-virtual {p0}, Lcom/android/server/gwm$ssp;->ywr()V

    return-void
.end method
