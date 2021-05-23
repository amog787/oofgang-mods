.class public final synthetic Lcom/android/server/am/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:I

.field public final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/you;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iput p2, p0, Lcom/android/server/am/you;->you:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/you;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p0, p0, Lcom/android/server/am/you;->you:I

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->L2(I)V

    return-void
.end method
