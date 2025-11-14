#!/bin/bash

# Enhanced Resume Generator Wrapper Script
# Makes it easy to generate different versions of your resume

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if dependencies are installed
check_dependencies() {
    if ! command -v python3 &> /dev/null; then
        print_error "Python 3 is required but not installed."
        exit 1
    fi
    
    if ! python3 -c "import docx" &> /dev/null; then
        print_warning "python-docx not found. Installing dependencies..."
        pip3 install -r requirements_resume_knit.txt
    fi
}

# Function to show usage
show_usage() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  standard     Generate standard resume"
    echo "  quant        Generate quantitative finance focused resume"
    echo "  tech         Generate technology focused resume"
    echo "  academic     Generate academic focused resume"
    echo "  all          Generate all versions"
    echo "  validate     Validate configuration file only"
    echo "  help         Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 standard"
    echo "  $0 quant"
    echo "  $0 all"
    echo "  $0 validate"
}

# Function to generate resume
generate_resume() {
    local version=$1
    print_status "Generating $version resume..."
    
    if python3 enhanced_resume_generator.py --version "$version"; then
        print_status "✅ $version resume generated successfully!"
    else
        print_error "❌ Failed to generate $version resume"
        exit 1
    fi
}

# Function to validate configuration
validate_config() {
    print_status "Validating configuration file..."
    
    if python3 enhanced_resume_generator.py --validate; then
        print_status "✅ Configuration is valid!"
    else
        print_error "❌ Configuration validation failed"
        exit 1
    fi
}

# Main script logic
main() {
    # Check dependencies first
    check_dependencies
    
    # Handle command line arguments
    case "${1:-help}" in
        standard)
            generate_resume "standard"
            ;;
        quant)
            generate_resume "quant"
            ;;
        tech)
            generate_resume "tech"
            ;;
        academic)
            generate_resume "academic"
            ;;
        all)
            print_status "Generating all resume versions..."
            generate_resume "standard"
            generate_resume "quant"
            generate_resume "tech"
            generate_resume "academic"
            print_status "✅ All resume versions generated successfully!"
            ;;
        validate)
            validate_config
            ;;
        help|--help|-h)
            show_usage
            ;;
        *)
            print_error "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
}

# Run main function
main "$@"