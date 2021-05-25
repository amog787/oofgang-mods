.class public final synthetic Lcom/android/server/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/obl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/obl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/kth;->zta:Lcom/android/server/obl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/kth;->zta:Lcom/android/server/obl;

    invoke-virtual {p0}, Lcom/android/server/obl;->veq()V

    return-void
.end method
