.class public final synthetic Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$Z7qIuj7K1pqbGQNunqibzqO18s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$Z7qIuj7K1pqbGQNunqibzqO18s0;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/-$$Lambda$WifiEntry$Z7qIuj7K1pqbGQNunqibzqO18s0;->f$0:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->lambda$notifyOnUpdated$0$WifiEntry()V

    return-void
.end method
