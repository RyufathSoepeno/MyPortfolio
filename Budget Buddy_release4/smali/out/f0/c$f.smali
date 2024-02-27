.class Lf0/c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field public final a:Ls0/c$a;

.field public final b:Lf0/c$d;


# direct methods
.method constructor <init>(Ls0/c$a;Lf0/c$d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/c$f;->a:Ls0/c$a;

    iput-object p2, p0, Lf0/c$f;->b:Lf0/c$d;

    return-void
.end method
