.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$gWMviBWa7YejsjM1KbUOIv9j1JA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$gWMviBWa7YejsjM1KbUOIv9j1JA;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$gWMviBWa7YejsjM1KbUOIv9j1JA;->f$0:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
