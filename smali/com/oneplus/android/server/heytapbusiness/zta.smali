.class public final synthetic Lcom/oneplus/android/server/heytapbusiness/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/heytapbusiness/zta;->zta:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/heytapbusiness/zta;->zta:Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;

    invoke-virtual {p0}, Lcom/oneplus/android/server/heytapbusiness/OpHeytapBusinessManagerService;->cno()V

    return-void
.end method
