.class Landroidx/biometric/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget v0, Landroidx/biometric/u;->a:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/o;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p2, :cond_1d

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p2, :cond_1d

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p2, :cond_1d

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1d
    return v0
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget v0, Landroidx/biometric/u;->d:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/o;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget v0, Landroidx/biometric/u;->e:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/o;->c(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_8

    return v1

    :cond_8
    sget v0, Landroidx/biometric/u;->c:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/o;->d(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_18

    sget p1, Landroidx/biometric/u;->b:I

    invoke-static {p0, p2, p1}, Landroidx/biometric/o;->c(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method
