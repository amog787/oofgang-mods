.class public Lcom/android/settings/accounts/ProviderEntry;
.super Ljava/lang/Object;
.source "ProviderEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/accounts/ProviderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    .line 27
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/accounts/ProviderEntry;)I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 34
    :cond_0
    iget-object p1, p1, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 37
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/android/settings/accounts/ProviderEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderEntry;->compareTo(Lcom/android/settings/accounts/ProviderEntry;)I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderEntry;->type:Ljava/lang/String;

    return-object p0
.end method
