.class public Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;
.super Ljava/lang/Object;
.source "LocaleFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/localepicker/LocaleFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocaleNames()Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    .line 32
    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocaleHelper;->getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
