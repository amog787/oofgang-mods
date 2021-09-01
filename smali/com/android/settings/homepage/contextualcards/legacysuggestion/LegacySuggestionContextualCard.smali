.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard;
.source "LegacySuggestionContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;
    }
.end annotation


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mSuggestion:Landroid/service/settings/suggestions/Suggestion;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    .line 31
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mPendingIntent:Landroid/app/PendingIntent;

    .line 32
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->access$100(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)Landroid/service/settings/suggestions/Suggestion;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mSuggestion:Landroid/service/settings/suggestions/Suggestion;

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getSuggestion()Landroid/service/settings/suggestions/Suggestion;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mSuggestion:Landroid/service/settings/suggestions/Suggestion;

    return-object p0
.end method
