.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$odOcE4rV8hguohUouyGm-OXJmSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$odOcE4rV8hguohUouyGm-OXJmSc;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$odOcE4rV8hguohUouyGm-OXJmSc;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/net/NetworkKey;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
