.class final Lcom/oneplus/accountsdk/auth/f;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "1000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Successfully obtained network data"

    return-object p0

    :cond_0
    const-string v0, "2000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Get cached data successfully"

    return-object p0

    :cond_1
    const-string v0, "1001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Account not logged in"

    return-object p0

    :cond_2
    const-string v0, "1002"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Account login failed"

    return-object p0

    :cond_3
    const-string v0, "1003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "operation failed"

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    const-string v0, "2001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "network anomaly"

    return-object p0

    :cond_5
    const-string v0, "3040"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Login status has expired"

    return-object p0

    :cond_6
    const-string v0, "3013"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Account exception"

    return-object p0

    :cond_7
    const-string v0, "3014"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "Cancel operation"

    return-object p0

    :cond_8
    const-string v0, "2003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "Missing android.permission.GET_ACCOUNTS permission"

    return-object p0

    :cond_9
    const-string v0, "2004"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "OnePlus Account app is not exist"

    return-object p0

    :cond_a
    const-string v0, "2005"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "This is a reserved method. And this version is not supported"

    return-object p0

    :cond_b
    const-string v0, "5000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Bind success"

    return-object p0

    :cond_c
    const-string v0, "6000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "Get token success"

    return-object p0

    :cond_d
    return-object v1
.end method
