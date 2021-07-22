.class public Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;
.super Ljava/lang/Object;
.source "OPLocalePickerBase.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/OPLocalePickerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->label:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;)I
    .locals 1

    .line 99
    sget-object v0, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 72
    check-cast p1, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->compareTo(Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;)I

    move-result p0

    return p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/localepicker/OPLocalePickerBase$LocaleInfo;->label:Ljava/lang/String;

    return-object p0
.end method
