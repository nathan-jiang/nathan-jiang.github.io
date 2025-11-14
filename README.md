# Enhanced Resume Generator

A configuration-driven Python system for generating professional resumes with advanced formatting and version management.

## Features

- **Configuration-driven**: All resume content stored in JSON for easy updates
- **Multiple versions**: Generate targeted resumes for different job types
- **Professional formatting**: Consistent styling with hyperlinks and proper spacing
- **Command-line interface**: Easy to use with various options
- **Error handling**: Robust validation and error reporting
- **Version control**: Automatic timestamping and version tracking

## Files

### Core Files
- `enhanced_resume_generator.py` - Main resume generation script
- `resume_config.json` - Configuration file with all resume content
- `requirements_resume_knit.txt` - Python dependencies

### Legacy Files
- `knit_short_resume.py` - Original simple script (deprecated)
- `Resume_Nan_Jiang_Short_2025-07-08.docx` - Latest generated resume

## Quick Start

1. **Install dependencies**:
   ```bash
   pip install -r requirements_resume_knit.txt
   ```

2. **Generate standard resume**:
   ```bash
   python enhanced_resume_generator.py
   ```

3. **Generate targeted resume**:
   ```bash
   python enhanced_resume_generator.py --version quant
   python enhanced_resume_generator.py --version tech
   python enhanced_resume_generator.py --version academic
   ```

## Command Line Options

```bash
python enhanced_resume_generator.py [OPTIONS]

Options:
  -c, --config PATH     Path to configuration JSON file (default: resume_config.json)
  -o, --output PATH     Output file path (default: auto-generated)
  -v, --version TYPE    Resume version: standard, quant, tech, academic
  --validate           Validate configuration file only
  -h, --help           Show help message
```

## Configuration File Structure

The `resume_config.json` file contains all resume content organized in sections:

```json
{
  "personal_info": {
    "name": "Your Name",
    "title": "Professional Title",
    "email": "email@example.com",
    "phone": "Phone Number",
    "location": "City, State",
    "linkedin": "LinkedIn URL",
    "github": "GitHub URL"
  },
  "summary": "Professional summary text...",
  "technical_skills": {
    "programming_languages": {
      "expert": ["Python", "R"],
      "proficient": ["SQL", "MATLAB"],
      "familiar": ["Java", "C++"]
    },
    "libraries_and_tools": {
      "ml_frameworks": ["Scikit-learn", "TensorFlow"],
      "data_processing": ["Pandas", "NumPy"],
      "specialized": ["Domain-specific tools"]
    },
    "methodologies": ["Method 1", "Method 2"],
    "languages": ["English (Fluent)", "Other (Native)"]
  },
  "experience": [
    {
      "company": "Company Name",
      "location": "City, State",
      "positions": [
        {
          "title": "Job Title",
          "period": "Start Date – End Date",
          "achievements": [
            "Achievement 1 with quantified results",
            "Achievement 2 with specific metrics"
          ]
        }
      ]
    }
  ],
  "projects": [
    {
      "name": "Project Name",
      "links": {
        "github": "GitHub URL",
        "webapp": "Web App URL",
        "paper": "Paper URL"
      },
      "description": "Project description with results and impact"
    }
  ],
  "education": [
    {
      "degree": "Degree Type",
      "institution": "University Name",
      "gpa": "GPA (optional)",
      "details": "Additional details (optional)"
    }
  ],
  "extras": [
    "Professional activities",
    "Awards and honors",
    "Certifications",
    "Languages"
  ]
}
```

## Customization

### Adding New Sections
To add new sections, modify the `enhanced_resume_generator.py` file:

1. Add the section to the configuration JSON
2. Create a new `add_section_name()` method in the `ResumeGenerator` class
3. Call the method in the `generate_resume()` function

### Styling Changes
Modify the `setup_styles()` method to change fonts, spacing, and formatting.

### Version-Specific Content
The `generate_targeted_resume()` method can be extended to customize content based on target job types.

## Best Practices

1. **Keep metrics current**: Update performance numbers and achievement dates regularly
2. **Quantify everything**: Use specific numbers, percentages, and dollar amounts
3. **Maintain consistency**: Use the same tense and formatting throughout
4. **Version control**: Keep different versions for different job types
5. **Regular updates**: Update the configuration file as you gain new experience

## Troubleshooting

### Common Issues

1. **Missing dependencies**: Run `pip install -r requirements_resume_knit.txt`
2. **Configuration errors**: Use `--validate` flag to check JSON syntax
3. **File permissions**: Ensure write permissions in the output directory
4. **Link formatting**: Check that URLs are properly formatted in the configuration

### Validation
Always validate your configuration before generating:
```bash
python enhanced_resume_generator.py --validate
```

## Migration from Legacy Script

If you're upgrading from the old `knit_short_resume.py`:

1. Your content has been migrated to `resume_config.json`
2. The new script provides better formatting and features
3. The old script is kept for reference but should not be used for new resumes

## Updates and Maintenance

- **Configuration**: Edit `resume_config.json` to update content
- **Code**: Modify `enhanced_resume_generator.py` for new features
- **Dependencies**: Update `requirements_resume_knit.txt` as needed

For questions or issues, refer to the inline documentation in the Python script.