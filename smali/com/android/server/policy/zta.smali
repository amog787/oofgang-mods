.class public final synthetic Lcom/android/server/policy/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/policy/sis;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/sis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/zta;->zta:Lcom/android/server/policy/sis;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/zta;->zta:Lcom/android/server/policy/sis;

    invoke-virtual {p0}, Lcom/android/server/policy/sis;->cno()V

    return-void
.end method
