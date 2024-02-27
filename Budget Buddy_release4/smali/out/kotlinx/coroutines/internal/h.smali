.class public final Lkotlinx/coroutines/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/h;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/h;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-array p2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected service of class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", but found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final b(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/h;->d(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_d

    :catchall_5
    invoke-static {p1, p2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p1

    invoke-static {p1}, Lb1/h;->u(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method private final e(Ljava/net/URL;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jar"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lp1/d;->m(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const-string p1, "jar:file:"

    invoke-static {v0, p1, v4, v3, v4}, Lp1/d;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x21

    invoke-static {p1, v1, v4, v3, v4}, Lp1/d;->W(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "!/"

    invoke-static {v0, v1, v4, v3, v4}, Lp1/d;->R(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V

    :try_start_26
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_51

    :try_start_3b
    sget-object v0, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/h;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/internal/h;->f(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_4a

    :try_start_41
    invoke-static {p1, v4}, Lh1/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_51

    :try_start_44
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    return-object v0

    :catchall_48
    move-exception p1

    throw p1

    :catchall_4a
    move-exception v0

    :try_start_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v2

    :try_start_4d
    invoke-static {p1, v0}, Lh1/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    :try_start_52
    throw p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v0

    :try_start_54
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    throw v0

    :catchall_58
    move-exception v0

    invoke-static {p1, v0}, La1/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_5d
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_6b
    sget-object p1, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/h;

    invoke-direct {p1, v0}, Lkotlinx/coroutines/internal/h;->f(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object p1
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_75

    invoke-static {v0, v4}, Lh1/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_75
    move-exception p1

    :try_start_76
    throw p1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v1

    invoke-static {v0, p1}, Lh1/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final f(Ljava/io/BufferedReader;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lb1/h;->u(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_10
    const/4 v2, 0x2

    const-string v3, "#"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Lp1/d;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lp1/d;->Y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_22
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_41

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x2e

    if-eq v4, v6, :cond_3c

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 v4, 0x0

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 v4, 0x1

    :goto_3d
    if-nez v4, :cond_22

    const/4 v3, 0x0

    goto :goto_42

    :cond_41
    const/4 v3, 0x1

    :goto_42
    if-eqz v3, :cond_51

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4b

    const/4 v2, 0x1

    :cond_4b
    if-eqz v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_51
    const-string p1, "Illegal service provider class name: "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlinx/coroutines/internal/r;",
            ">;"
        }
    .end annotation

    const-class v0, Lkotlinx/coroutines/internal/r;

    invoke-static {}, Lkotlinx/coroutines/internal/i;->a()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/h;->b(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_11
    :try_start_11
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "kotlinx.coroutines.android.AndroidDispatcherFactory"
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_65

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v4, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/r;
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_36} :catch_37
    .catchall {:try_start_1c .. :try_end_36} :catchall_65

    goto :goto_39

    :catch_37
    nop

    move-object v2, v3

    :goto_39
    if-nez v2, :cond_3c

    goto :goto_3f

    :cond_3c
    :try_start_3c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3f
    const-string v2, "kotlinx.coroutines.test.internal.TestMainDispatcherFactory"
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_65

    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v2, v4, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/r;
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_5b} :catch_5d
    .catchall {:try_start_41 .. :try_end_5b} :catchall_65

    move-object v3, v2

    goto :goto_5e

    :catch_5d
    nop

    :goto_5e
    if-nez v3, :cond_61

    goto :goto_6d

    :cond_61
    :try_start_61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_6d

    :catchall_65
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/h;->b(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    :goto_6d
    return-object v1
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/services/"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/k;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "list(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    sget-object v3, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/h;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/h;->e(Ljava/net/URL;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lb1/h;->j(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_20

    :cond_36
    invoke-static {v1}, Lb1/h;->x(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_68

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lb1/h;->i(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/coroutines/internal/h;->a:Lkotlinx/coroutines/internal/h;

    invoke-direct {v3, v2, p2, p1}, Lkotlinx/coroutines/internal/h;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_67
    return-object v1

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No providers were loaded with FastServiceLoader"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
