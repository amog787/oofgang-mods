.class public Lcom/oneplus/security/utils/SharedPreferenceHelper;
.super Lcom/oneplus/security/BaseSharePreference;
.source "SharedPreferenceHelper.java"


# static fields
.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    invoke-static {}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/oneplus/security/utils/SharedPreferenceHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 25
    sget-object v0, Lcom/oneplus/security/utils/SharedPreferenceHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1

    .line 56
    sget-object v0, Lcom/oneplus/security/utils/SharedPreferenceHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
