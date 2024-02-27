.class Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/j$c;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FlutterSharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lx0/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lx0/a;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lx0/a;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lx0/a;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Landroid/content/SharedPreferences$Editor;Ls0/j$d;)V
    .registers 5

    iget-object v0, p0, Lx0/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lx0/a$a;

    invoke-direct {v1, p0, p1, p2}, Lx0/a$a;-><init>(Lx0/a;Landroid/content/SharedPreferences$Editor;Ls0/j$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_10} :catch_22
    .catchall {:try_start_1 .. :try_end_10} :catchall_20

    :try_start_10
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_16} :catch_1d
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    return-object p1

    :catchall_1a
    move-exception p1

    move-object v0, v1

    goto :goto_29

    :catch_1d
    move-exception p1

    move-object v0, v1

    goto :goto_23

    :catchall_20
    move-exception p1

    goto :goto_29

    :catch_22
    move-exception p1

    :goto_23
    :try_start_23
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20

    :goto_29
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :cond_2e
    throw p1
.end method

.method private e(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_21

    :try_start_b
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    return-object p1

    :catchall_1e
    move-exception p1

    move-object v0, v2

    goto :goto_22

    :catchall_21
    move-exception p1

    :goto_22
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_27
    throw p1
.end method

.method private f(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    if-eqz v5, :cond_6a

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x28

    if-eqz v6, :cond_43

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lx0/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_a6

    :cond_43
    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59

    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    const/16 v6, 0x24

    invoke-direct {v5, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    goto :goto_9c

    :cond_59
    const-string v6, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    goto :goto_a6

    :cond_6a
    instance-of v5, v4, Ljava/util/Set;

    if-eqz v5, :cond_a6

    new-instance v5, Ljava/util/ArrayList;

    check-cast v4, Ljava/util/Set;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Lx0/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_9e

    :goto_9c
    move-object v4, v5

    goto :goto_a6

    :cond_9e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not migrate set to list"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a6
    :goto_a6
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_ab
    return-object v1
.end method


# virtual methods
.method public a(Ls0/i;Ls0/j$d;)V
    .registers 10

    const-string v0, "key"

    invoke-virtual {p1, v0}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_8
    iget-object v1, p1, Ls0/i;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1a6

    goto :goto_6d

    :sswitch_13
    const-string v3, "setBool"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v2, 0x0

    goto :goto_6d

    :sswitch_1d
    const-string v3, "clearWithPrefix"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/16 v2, 0x8

    goto :goto_6d

    :sswitch_28
    const-string v3, "setString"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v2, 0x3

    goto :goto_6d

    :sswitch_32
    const-string v3, "getAllWithPrefix"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v2, 0x6

    goto :goto_6d

    :sswitch_3c
    const-string v3, "setDouble"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v2, 0x1

    goto :goto_6d

    :sswitch_46
    const-string v3, "setInt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v2, 0x2

    goto :goto_6d

    :sswitch_50
    const-string v3, "remove"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v2, 0x7

    goto :goto_6d

    :sswitch_5a
    const-string v3, "setStringList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v2, 0x4

    goto :goto_6d

    :sswitch_64
    const-string v3, "commit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_6a} :catch_19d

    if-eqz v1, :cond_6d

    const/4 v2, 0x5

    :cond_6d
    :goto_6d
    const-string v1, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu"

    const-string v3, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy"

    const-string v4, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu"

    const-string v5, "prefix"

    const-string v6, "value"

    packed-switch v2, :pswitch_data_1cc

    :try_start_7a
    invoke-interface {p2}, Ls0/j$d;->c()V

    goto/16 :goto_1a5

    :pswitch_7f
    invoke-virtual {p1, v5}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lx0/a;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_97

    :cond_a7
    invoke-direct {p0, v1, p2}, Lx0/a;->c(Landroid/content/SharedPreferences$Editor;Ls0/j$d;)V

    goto/16 :goto_1a5

    :pswitch_ac
    iget-object v1, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_b6
    invoke-direct {p0, v0, p2}, Lx0/a;->c(Landroid/content/SharedPreferences$Editor;Ls0/j$d;)V

    goto/16 :goto_1a5

    :pswitch_bb
    invoke-virtual {p1, v5}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lx0/a;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ls0/j$d;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_c9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Ls0/j$d;->a(Ljava/lang/Object;)V

    goto/16 :goto_1a5

    :pswitch_d0
    invoke-virtual {p1, v6}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lx0/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_b6

    :pswitch_f4
    invoke-virtual {p1, v6}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_118

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_118

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10d

    goto :goto_118

    :cond_10d
    iget-object v1, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_b6

    :cond_118
    :goto_118
    const-string v0, "StorageError"

    const-string v1, "This string cannot be stored as it clashes with special identifier prefixes."

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_121
    invoke-virtual {p1, v6}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_14e

    check-cast v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto/16 :goto_b6

    :cond_14e
    iget-object v2, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto/16 :goto_b6

    :pswitch_15e
    invoke-virtual {p1, v6}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto/16 :goto_b6

    :pswitch_187
    iget-object v1, p0, Lx0/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1, v6}, Ls0/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_19b} :catch_19d

    goto/16 :goto_b6

    :catch_19d
    move-exception v0

    iget-object p1, p1, Ls0/i;->a:Ljava/lang/String;

    const-string v1, "IOException encountered"

    invoke-interface {p2, v1, p1, v0}, Ls0/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1a5
    return-void

    :sswitch_data_1a6
    .sparse-switch
        -0x50c0d6c9 -> :sswitch_64
        -0x4161e5af -> :sswitch_5a
        -0x37b5077c -> :sswitch_50
        -0x35fd8fd3 -> :sswitch_46
        0x943d2d3 -> :sswitch_3c
        0x20035fc3 -> :sswitch_32
        0x2321b713 -> :sswitch_28
        0x4ed4f925 -> :sswitch_1d
        0x76486a6c -> :sswitch_13
    .end sparse-switch

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_187
        :pswitch_15e
        :pswitch_121
        :pswitch_f4
        :pswitch_d0
        :pswitch_c9
        :pswitch_bb
        :pswitch_ac
        :pswitch_7f
    .end packed-switch
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lx0/a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lx0/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
