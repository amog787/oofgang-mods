.class Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;
.super Landroid/database/ContentObserver;
.source "AutofillPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/autofill/AutofillPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;Landroid/os/Handler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->notifyDependencyChange(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$AutofillPreferenceCategory$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->lambda$onChange$0()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-static {p1}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->access$000(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/development/autofill/-$$Lambda$AutofillPreferenceCategory$1$24vtbdnKjmYcrJhveWxi0iMWPPE;

    invoke-direct {p2, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AutofillPreferenceCategory$1$24vtbdnKjmYcrJhveWxi0iMWPPE;-><init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
