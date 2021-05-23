.class public final synthetic Lcom/android/server/gck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/fto;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/gck;->zta:Lcom/android/server/fto;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/gck;->zta:Lcom/android/server/fto;

    invoke-virtual {p0}, Lcom/android/server/fto;->fto()V

    return-void
.end method
