.class public final Lh0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lh0/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "aot-shared-library-name"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh0/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "vm-snapshot-data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh0/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "isolate-snapshot-data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lh0/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "flutter-assets-dir"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh0/a;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .registers 3

    if-nez p0, :cond_3

    return p2

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    const-string v1, "io.flutter.network-policy"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_10

    return-object v0

    :cond_10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_24
    const/4 v3, 0x1

    if-eq p1, v3, :cond_3e

    const/4 v3, 0x2

    if-ne p1, v3, :cond_39

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "domain-config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-static {p0, v1, v2}, Lh0/a;->g(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    :cond_39
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3d} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_3d} :catch_43

    goto :goto_24

    :cond_3e
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_43
    return-object v0
.end method

.method private static d(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lh0/b;
    .registers 11

    invoke-static {p0}, Lh0/a;->a(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v9, Lh0/b;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v2, Lh0/a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lh0/a;->d(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v3, Lh0/a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lh0/a;->d(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v4, Lh0/a;->c:Ljava/lang/String;

    invoke-static {v1, v4}, Lh0/a;->d(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Lh0/a;->d:Ljava/lang/String;

    invoke-static {v1, v5}, Lh0/a;->d(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p0}, Lh0/a;->c(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "io.flutter.automatically-register-plugins"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lh0/a;->b(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lh0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v9
.end method

.method private static f(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V
    .registers 6

    const/4 v0, 0x0

    const-string v1, "includeSubdomains"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_36

    return-void

    :cond_36
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected end of domain tag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static g(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "cleartextTrafficPermitted"

    invoke-interface {p0, v0, v1, p2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    :cond_7
    :goto_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1, p2}, Lh0/a;->f(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    goto :goto_7

    :cond_1e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "domain-config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p0, p1, p2}, Lh0/a;->g(Landroid/content/res/XmlResourceParser;Lorg/json/JSONArray;Z)V

    goto :goto_7

    :cond_2e
    invoke-static {p0}, Lh0/a;->h(Landroid/content/res/XmlResourceParser;)V

    goto :goto_7

    :cond_32
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    return-void
.end method

.method private static h(Landroid/content/res/XmlResourceParser;)V
    .registers 4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_8
    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v1, v0, :cond_12

    goto :goto_13

    :cond_12
    return-void

    :cond_13
    :goto_13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_8
.end method
