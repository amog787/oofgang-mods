.class public final synthetic Lcom/android/server/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic zta:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/you;->zta:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/you;->zta:I

    check-cast p1, Lcom/android/server/OnePlusUtil$sis$zta;

    invoke-static {p0, p1}, Lcom/android/server/OnePlusUtil$sis;->sis(ILcom/android/server/OnePlusUtil$sis$zta;)V

    return-void
.end method
