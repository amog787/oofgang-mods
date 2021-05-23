.class public final synthetic Lcom/android/server/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic zta:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/zta;->zta:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zta;->zta:Z

    check-cast p1, Lcom/android/server/OnePlusUtil$sis$zta;

    invoke-static {p0, p1}, Lcom/android/server/OnePlusUtil$sis;->tsu(ZLcom/android/server/OnePlusUtil$sis$zta;)V

    return-void
.end method
