.class Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/notification/zen/ZenRuleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/zen/ZenRuleInfo;Lcom/android/settings/notification/zen/ZenRuleInfo;)I
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 222
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;->mCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 213
    check-cast p1, Lcom/android/settings/notification/zen/ZenRuleInfo;

    check-cast p2, Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;->compare(Lcom/android/settings/notification/zen/ZenRuleInfo;Lcom/android/settings/notification/zen/ZenRuleInfo;)I

    move-result p0

    return p0
.end method
